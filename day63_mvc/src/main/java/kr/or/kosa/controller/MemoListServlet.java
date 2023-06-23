package kr.or.kosa.controller;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import kr.or.kosa.dao.MemoDao;
import kr.or.kosa.dto.MemoDto;

@WebServlet("/memoList")
public class MemoListServlet extends HttpServlet {

	@Override
	protected void doGet(HttpServletRequest request, 
			HttpServletResponse response) throws ServletException, IOException {
		System.out.println("List Servlet!");
		MemoDao  dao = new MemoDao();
		
		String search = request.getParameter("search");
		
		
		try {
			List<MemoDto> list = new ArrayList<>();
				if (search != "") {
					list.add(dao.selectByID(search));
				}
				else {
					list = dao.selectAllMemo();
				}
			//데이터 저장
			request.setAttribute("list", list);
			// view page
			RequestDispatcher dispatcher = request.getRequestDispatcher("/memoList.jsp");
			//forward
			dispatcher.forward(request, response);
					
		} catch (Exception e) {
			e.printStackTrace();
		}
		
	}

	@Override
	protected void doPost(HttpServletRequest req, 
			HttpServletResponse resp) throws ServletException, IOException {
		doGet(req, resp);
	}
	
	

}
