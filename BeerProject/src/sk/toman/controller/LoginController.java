package sk.toman.controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.catalina.core.ApplicationContext;

import sk.toman.model.LoginModel;

public class LoginController extends HttpServlet{

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	public void doPost(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException {
		doGet(request, response);
	}
	
	public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException {
		String pass = request.getParameter("pass");
		LoginModel loginModel = new LoginModel();
		
		if(loginModel.checkLogin(pass)){
			RequestDispatcher view = request.getRequestDispatcher("pageMain.jsp");
			view.forward(request, response);
		}else{
			response.sendError(1001, "Bad username or password");
		}
	}
}
