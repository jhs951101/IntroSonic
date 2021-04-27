package controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import database.DBOperation;
import model.Game;
import model.Model;
import model.SonicImage;

/**
 * Servlet implementation class MaterialLoadController
 */
@WebServlet("/ImageLoadController")
public class ImageLoadController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ImageLoadController() {
        super();
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		DBOperation service = new DBOperation();		
		String type = request.getParameter("type");
		Model[] images = service.selects("type = " + type, "sonicimage");
		
		SonicImage[] imageToShow = null;
		int numOfPage = 0;
		
		if(images.length <= 0) {
			imageToShow = new SonicImage[0];
		}
		else {
			numOfPage = images.length / 10;
			
			if(images.length%10 > 0)
				numOfPage++;
			
			int page = Integer.parseInt(request.getParameter("page"));
			int startIndex = (page-1) * 10;
			int size_imageToShow;
			
			if(images.length - startIndex > 10)
				size_imageToShow = 10;
			else
				size_imageToShow = images.length - startIndex;
			
			imageToShow = new SonicImage[size_imageToShow];
			int i = startIndex;
			int j = 0;
			
			while(j < size_imageToShow) {
				imageToShow[j] = (SonicImage) images[i];
				
				i++;
				j++;
			}
		}
		
		request.setAttribute("images", imageToShow);
		request.setAttribute("numOfPage", numOfPage);
		request.setAttribute("type", (String) request.getParameter("type"));
		
		RequestDispatcher dispatcher = request.getRequestDispatcher("imagepage.jsp");
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
