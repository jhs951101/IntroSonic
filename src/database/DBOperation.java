package database;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import model.Game;
import model.Member;
import model.Model;
import model.SonicImage;

public class DBOperation {
	private DBConnection db;

	public DBOperation() {
		db = DBConnection.getInstance();
	}

	public void insert(Model m) {
		Connection conn = null;
		String sql = null;
		
		if(m instanceof Member) 
			sql = "insert into member values(?, ?, ?, ?, ?, ?, ?, ?, ?, ?)";

		PreparedStatement pstmt = null;
		try {
			conn = db.getConnection();
			pstmt = conn.prepareStatement(sql);
			
			if(m instanceof Member) {
				pstmt.setString(1, ((Member) m).getUsername());
				pstmt.setString(2, ((Member) m).getPassword());
				pstmt.setString(3, ((Member) m).getName());
				pstmt.setString(4, ((Member) m).getEmail());
				pstmt.setString(5, ((Member) m).getPhoneNumber());
				pstmt.setString(6, ((Member) m).getJob());
				pstmt.setString(7, ((Member) m).getGender());
				pstmt.setInt(8, ((Member) m).isGetEmail());
				pstmt.setInt(9, ((Member) m).isGetPhone());
				pstmt.setString(10, ((Member) m).getExplanation());
			}

			pstmt.executeUpdate();

		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			try {
				pstmt.close();
				conn.close();
			} catch (SQLException e) {
				e.printStackTrace();
			}

		}
	}

	public Model select(String id, String model) {
		Connection conn = null;
		ResultSet rs = null;
		PreparedStatement pstmt = null;
		Model m = null;
		String sql = null;
		
		if(model.equals("member"))
			sql = "select * from member where username=?";
		
		try {
			conn = db.getConnection();
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, id);
			
			rs = pstmt.executeQuery();
			if (rs.next()) {
				if(model.equals("member")) {
					return new Member(rs.getString(1), rs.getString(2), rs.getString(3), rs.getString(4), rs.getString(5),
							rs.getString(6), rs.getString(7), rs.getInt(8), rs.getInt(9), rs.getString(10));
				}
			}

		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			try {
				rs.close();
				pstmt.close();
				conn.close();
			} catch (SQLException e) {
				e.printStackTrace();
			}

		}
		return null;
	}
	
	public Model[] selects(String condition, String model) {
		Connection conn = null;
		ResultSet rs = null;
		PreparedStatement pstmt = null;
		String sql = null;
		Model[] result = null;
		
		if(model.equals("game"))
			sql = "select * from game where " + condition + " order by title";
		else if(model.equals("sonicimage"))
			sql = "select * from sonicimage where " + condition + " order by name";
		
		try {
			conn = db.getConnection();
			pstmt = conn.prepareStatement(sql);
			rs = pstmt.executeQuery();
			
			ArrayList<Model> ms = new ArrayList<Model>();
			
			while (rs.next()) {
				if(model.equals("game"))
					ms.add(new Game(rs.getString(1), rs.getString(2), rs.getInt(3), rs.getString(4), rs.getString(5)));
				else if(model.equals("sonicimage")) 
					ms.add(new SonicImage(rs.getString(1), rs.getString(2), rs.getString(3)));
			}
			
			result = new Model[ms.size()];
			
			for(int i=0; i<result.length; i++)
				result[i] = ms.get(i);

		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			try {
				rs.close();
				pstmt.close();
				conn.close();
			} catch (SQLException e) {
				e.printStackTrace();
			}

		}
		
		return result;
	}

	public void update(Model m) {
		Connection conn = null;
		String sql = null;
		
		if(m instanceof Member) 
			sql = "update member set password=?, name=?, email=?, phonenumber=?, job=?, gender=?, getEmail=?, getPhone=?, explanation=?"
					+ " where username=?";

		PreparedStatement pstmt = null;
		
		try {
			conn = db.getConnection();
			pstmt = conn.prepareStatement(sql);

			if(m instanceof Member) {
				pstmt.setString(1, ((Member) m).getPassword());
				pstmt.setString(2, ((Member) m).getName());
				pstmt.setString(3, ((Member) m).getEmail());
				pstmt.setString(4, ((Member) m).getPhoneNumber());
				pstmt.setString(5, ((Member) m).getJob());
				pstmt.setString(6, ((Member) m).getGender());
				pstmt.setInt(7, ((Member) m).isGetEmail());
				pstmt.setInt(8, ((Member) m).isGetPhone());
				pstmt.setString(9, ((Member) m).getExplanation());
				pstmt.setString(10, ((Member) m).getUsername());
			}
			
			pstmt.executeUpdate();

		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			try {
				pstmt.close();
				conn.close();
			} catch (SQLException e) {
				e.printStackTrace();
			}

		}
	}

	public void delete(String id, String model) {
		Connection conn = null;
		String sql = null;
		
		if(model.equals("member"))
			sql = "delete member where username=?";
		
		PreparedStatement pstmt = null;
		try {
			conn = db.getConnection();
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, id);
			
			pstmt.executeUpdate();

		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			try {
				pstmt.close();
				conn.close();
			} catch (SQLException e) {
				e.printStackTrace();
			}

		}
	}
}
