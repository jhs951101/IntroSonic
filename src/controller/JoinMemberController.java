package controller;

import java.io.IOException;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import database.DBOperation;
import model.Member;

/**
 * Servlet implementation class JoinController
 */
@WebServlet("/JoinMemberController")
public class JoinMemberController extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public JoinMemberController() {
		super();
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		request.setCharacterEncoding("euc-kr");
		response.setContentType("text/html; charset=EUC-KR");
		response.setCharacterEncoding("euc-kr");

		DBOperation service = new DBOperation();

		String username = request.getParameter("username");
		String password = request.getParameter("password");
		String name = request.getParameter("name");
		String email = request.getParameter("email-id") + "@" + request.getParameter("email-other");
		String phoneNumber = request.getParameter("phone1(c)") + "-" + request.getParameter("phone2(c)") + "-" + request.getParameter("phone3(c)");
		String job = request.getParameter("job");
		String gender = request.getParameter("gender");
		int getEmail = Integer.parseInt(request.getParameter("email-send"));
		int getPhone = Integer.parseInt(request.getParameter("phone-send"));
		String explanation = request.getParameter("explanation");
		
		Member member = new Member(username, password, name, email, phoneNumber, job, gender, getEmail, getPhone, explanation);		
		service.insert(member);

		RequestDispatcher dispatcher = request.getRequestDispatcher("login.jsp");
		if (dispatcher != null) {
			dispatcher.forward(request, response);
		}

	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
