package kr.or.kosa.service;

import javax.naming.NamingException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import kr.or.kosa.action.Action;
import kr.or.kosa.action.ActionForward;
import kr.or.kosa.dao.BoardDao;
import kr.or.kosa.dto.BoardDto;

public class BoardEditService implements Action {

	@Override
	public ActionForward execute(HttpServletRequest request, HttpServletResponse response) {
		//수정하기
		String idx = request.getParameter("idx");
		
		String msg="";
	    String url="";

		BoardDao dao;
		ActionForward forward = null;
		try {		
			if(idx == null || idx.trim().equals("")){
				response.sendRedirect("BoardList.do"); //cpage=1 , ps=5
				return null;
			}

			dao = new BoardDao();
			
			//BoardService service = BoardService.getInBoardService();
			BoardDto board = dao.getEditContent(idx);
			
			if(board == null){
				msg ="데이터 오류";
				url ="BoardList.do";
				
				request.setAttribute("board_msg", msg);
				request.setAttribute("board_url", url);
				
				forward = new ActionForward();
				forward.setRedirect(false);
				forward.setPath("/WEB-INF/views/board/redirect.jsp");
				
			}else {
				request.setAttribute("idx", idx);
				request.setAttribute("board", board);
				
				forward = new ActionForward();
				forward.setRedirect(false);
				forward.setPath("/WEB-INF/views/board/board_edit.jsp");
				
			}

		} catch (Exception e) {
			e.printStackTrace();
		}

		return forward;
	}

}
