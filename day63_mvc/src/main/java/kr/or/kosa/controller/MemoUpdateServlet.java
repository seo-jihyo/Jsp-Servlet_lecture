package kr.or.kosa.controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import kr.or.kosa.dao.MemoDao;

@WebServlet("/memoUpdate")
public class MemoUpdateServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response) 
			throws ServletException, IOException {
		
		request.setCharacterEncoding("utf-8");
		response.setContentType("text/html;charset=utf-8");

		MemoDao dao = new MemoDao();
		String id = request.getParameter("id");
		
		try {
			request.setAttribute("dao", dao.selectByID(id));
			RequestDispatcher dispatcher = request.getRequestDispatcher("/memoUpdate.jsp");
			dispatcher.forward(request, response);
						
		} catch (Exception e) {
			e.printStackTrace();
		}		
	}
	protected void doPost(HttpServletRequest request, HttpServletResponse response) 
			throws ServletException, IOException {
		doGet(request, response);
	}

}
