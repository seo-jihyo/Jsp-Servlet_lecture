package kr.or.kosa.controller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import kr.or.kosa.dao.MemoDao;


@WebServlet("/memoDelete")
public class MemoDeleteServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;


	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		response.setContentType("text/html;charset=utf-8");
		
		PrintWriter out = response.getWriter();
		
		MemoDao dao = new MemoDao();
		String id = request.getParameter("id");
		
/*		try {
			dao.memoDelete(id);
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		try {
			request.setAttribute("dao", dao.memoDelete(id));
			System.out.println("id: " + id);
			RequestDispatcher dispatcher = request.getRequestDispatcher("/memoDelete");
			dispatcher.forward(request, response);
			
	*/	
		   try {
		         int result = dao.memoDelete(id);
		         if(result > 0) {
		            out.print("<script>");
		            out.print("alert('삭제성공!!');");
		            out.print("location.href='memoList?search=';"); // jsp >> /memoList.jsp
		            out.print("</script>");
		            
		         } else {
		            out.print("<script>");
		            out.print("alert('삭제실패!!');");
		            out.print("location.href='memoList?search=';"); // jsp >> /memoList.jsp
		            out.print("</script>");
		         }

		} catch (Exception e) {
			e.printStackTrace();
		}
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}
