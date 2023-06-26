package kr.or.kosa.controller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import kr.or.kosa.dao.MemoDao;
import kr.or.kosa.dto.MemoDto;

@WebServlet("/MemoUpdateProServlet")
public class MemoUpdateProServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		response.setContentType("text/html;charset=utf-8");

		PrintWriter out = response.getWriter();

		String id = request.getParameter("id");
		String email = request.getParameter("email");
		String content = request.getParameter("content");

		MemoDao dao = new MemoDao();

		try {
			dao.memoUpdate(new MemoDto(id, email, content));
			int su = dao.memoUpdate(new MemoDto(id, email, content));			
			System.out.println("su: " + su);			
			if (su > 0) {

				out.print("<script>");
				out.print("alert('수정 완료');");
				out.print("location.href='memoList?search=';"); // jsp >> /memoList.jsp
				out.print("</script>");
			} else {
				out.print("<script>");
				out.print("alert('수정 실패' );");
				out.print("location.href='memo.html';");
				out.print("</script>");
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		doGet(request, response);
	}

}
