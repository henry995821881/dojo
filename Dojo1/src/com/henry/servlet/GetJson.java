package com.henry.servlet;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.ServletInputStream;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.alibaba.fastjson.JSON;
import com.henry.bean.BaiduItem;

import oracle.jrockit.jfr.settings.JSONElement;

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
	 * 
	 * 
	 * var items = $("div.result");
	 * 
	 * var items_json=[];
	 * 
	 * items.each(function(index,ele){
	 * 
	 * var item = $(this);
	 * 
	 * var title =item.find(".t > a").text(); 
	 * 
	 * var link =item.find(".t > a"
	 * ).attr("href"); 
	 * 
	 * var content =item.find(".c-abstract").text();
	 * 
	 * items_json.push({title:title,link:link,content:content});
	 * 
	 * 
	 * });
	 * 
	 * 
	 * 
	 * var s =JSON.stringify(items_json);
	 * 
	 * console.log(s);
	 * 
	 * 
	 * $.post("http://10.10.10.31:8080/Dojo1/GetJson",{'arr':s},function(data){
	 * 
	 * 
	 * 
	 * 
	 * });
	 * 
	 * 
	 * 
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		request.setCharacterEncoding("UTF-8");
		String json_arr = request.getParameter("arr");

		List<BaiduItem> items = JSON.parseArray(json_arr, BaiduItem.class);

		System.out.println(items);
		// System.out.println(json_arr);

		response.getWriter().print("");
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
