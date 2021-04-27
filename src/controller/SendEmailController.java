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
 * Servlet implementation class SendEmailControllerNO
 */
@WebServlet("/SendEmailController")
public class SendEmailController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public SendEmailController() {
        super();
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		DBOperation service = new DBOperation();
		
		String type = request.getParameter("type");
		String title = request.getParameter("title");
		String content = request.getParameter("content");
		String recipient = "sharping1101@naver.com";
		
		HttpSession session = request.getSession(false);
		Member member = (Member) service.select((String) session.getAttribute("username"), "member");
		
		SendEmail sendEmail = new SendEmail();
		sendEmail.sendTo(recipient, title, content + "\n\n질문자 이메일: " + member.getEmail());
		
		RequestDispatcher dispatcher = request.getRequestDispatcher("support-1n1.jsp");
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
