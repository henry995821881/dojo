package com.henry.servlet;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.ServletInputStream;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class GetJson
 */
public class GetJson extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public GetJson() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		request.setCharacterEncoding("UTF-8");
	/*	ServletInputStream is = request.getInputStream();
		
	    StringBuffer sBuffer = new StringBuffer();
	    
	    byte[] buff = new byte[1024];
	    int len =-1;
	    if((len = is.read(buff))!=-1){
	    	
	    	sBuffer.append(new String(buff, 0, len, "UTF-8"));
	    	
	    }
	    
	    System.out.println(sBuffer.toString());
		*/
		System.out.println(request.getParameter("data"));
		
	response.getWriter().print("");	
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
