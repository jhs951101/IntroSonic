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
import model.Game;
import model.Member;
import model.Model;

/**
 * Servlet implementation class GameLoadController
 */
@WebServlet("/ObjectLoadController")
public class ObjectLoadController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ObjectLoadController() {
        super();
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		DBOperation service = new DBOperation();
		String type = request.getParameter("type");
		String model = request.getParameter("model");
		Model[] showingModels = null;
		Model[] models = null;
		int numOfPage = 0;
		
		if(model.equals("game"))
			models = service.selects("''=''", "game");
		else if(model.equals("image"))
			models = service.selects("type = '" + type + "'", "sonicimage");
		
		if(models.length <= 0){
			showingModels = new Model[0];
		}
		else {
			numOfPage = models.length / 10;
			
			if(models.length%10 > 0)
				numOfPage++;
			
			int page = Integer.parseInt(request.getParameter("page"));
			int startIndex = (page-1) * 10;
			int size_showingModels;
			
			if(models.length - startIndex > 10)
				size_showingModels = 10;
			else
				size_showingModels = models.length - startIndex;
			
			showingModels = new Model[size_showingModels];
			int i = startIndex;
			int j = 0;
			
			while(j < size_showingModels) {
				showingModels[j] = models[i];
				
				i++;
				j++;
			}
		}
		
		request.setAttribute("models", showingModels);
		request.setAttribute("model", model);
		request.setAttribute("numOfPage", numOfPage);
		request.setAttribute("type", (String) request.getParameter("type"));
		
		RequestDispatcher dispatcher = request.getRequestDispatcher("objectpage.jsp");
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
