package com.hos.Service;

import java.io.*;
import javax.servlet.*;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class LoginServlet
 */
@WebServlet("/LoginCheck")
public class LoginCheck extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String username, password;
		username=request.getParameter("username");
		password=request.getParameter("password");
		if(username.equals("admin") && password.equals("admin")) {
			response.sendRedirect("main.jsp");
			return;
		}
		else {
			response.sendRedirect("loginErr.html");
			return;
		}
		
	}

}
