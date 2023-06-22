package edu.kosa.controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/info")
public class InfoController extends HttpServlet {

	@Override
	protected void doGet(HttpServletRequest request, HttpServletResponse response) 
			throws ServletException, IOException {
		
		request.setCharacterEncoding("utf-8");
		String name  = request.getParameter("name");
		String addr  = request.getParameter("addr");
		String tel  = request.getParameter("tel");
		
		
		request.setAttribute("name", name);
		request.setAttribute("addr", addr);
		request.setAttribute("tel", tel);
		
		//4.이동할 뷰 페이지 지정 
		RequestDispatcher dispatcher =
				request.getRequestDispatcher("/views/infoView.jsp"); //view page 전달
		dispatcher.forward(request, response);
	}

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) 
			throws ServletException, IOException {
		doGet(req, resp);
	}

}
