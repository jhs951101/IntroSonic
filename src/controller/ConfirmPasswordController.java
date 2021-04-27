package controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import database.DBOperation;
import model.Member;

/**
 * Servlet implementation class confirmPasswordController
 */
@WebServlet("/confirmPasswordController")
public class ConfirmPasswordController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ConfirmPasswordController() {
        super();
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("euc-kr");
		response.setContentType("text/html; charset=EUC-KR");
		response.setCharacterEncoding("euc-kr");

		DBOperation service = new DBOperation();
		HttpSession session = request.getSession(false);
		boolean success = false;

		String username = (String) session.getAttribute("username");
		String password = request.getParameter("password");
		Member member = (Member) service.select(username, "member");

		if (member != null && password.equals(member.getPassword())) {
			request.setAttribute("member", member);
			success = true;
		}
		
		String link;
		
		if(success)
			link = "editMember.jsp";
		else
			link = "accept.jsp";

		RequestDispatcher dispatcher = request.getRequestDispatcher(link);
		if (dispatcher != null) {
			dispatcher.forward(request, response);
		}
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}
