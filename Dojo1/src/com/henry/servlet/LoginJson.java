package com.henry.servlet;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class LoginJson
 */
public class LoginJson extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public LoginJson() {
		super();
		// TODO Auto-generated constructor stub
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
		
		String s ="{"
			   +"  \"title\":\"JSON Sample Data\","
               +" \"items\":[{"
			     +"  \"name\":\"text\","
			     +"   \"value\":\"text data\""
			    +"},{"
			       +" \"name\":\"integer\","
			       +" \"value\":100"
			    +"},{"
			       +" \"name\":\"float\","
			       +" \"value\":5.65"
			    +"},{"
			       +" \"name\":\"boolean\","
			     +"   \"value\":false"
			    +"}]"
			+"}";

	response.getWriter().println(s);

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
