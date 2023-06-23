package kr.or.kosa.controller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import kr.or.kosa.dao.MemoDao;


@WebServlet("/Memoid")
public class Memoid extends HttpServlet {
	private static final long serialVersionUID = 1L;
       

	protected void doGet(HttpServletRequest request, HttpServletResponse response) 
			throws ServletException, IOException {
		//비동기 요청을 받아서
		//전달한 id 값을 받아서 request
		
		//db 연결
		//select id from memo where id=?
		//isChekckById(String id)
		
		//isCheckById 호출해서 return값 받아와서
		//뷰페이지 생성하지 않고 out.print로 출력
		
		System.out.println(request.getParameter("id"));
		
		request.setCharacterEncoding("UTF-8");
		response.setContentType("text/html;charset=UTF-8");
		PrintWriter out = response.getWriter();
		
		String id = request.getParameter("id");
		MemoDao dao = new MemoDao();
		String idcheck = null;
		try {
			idcheck = dao.isCheckById(id);
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		
		request.setAttribute("idcheck", idcheck);
		RequestDispatcher dispatcher = request.getRequestDispatcher("/check.jsp");
		dispatcher.forward(request, response);
	}


	protected void doPost(HttpServletRequest request, HttpServletResponse response) 
			throws ServletException, IOException {
		
		doGet(request, response);
	}

}
