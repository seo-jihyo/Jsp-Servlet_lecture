package kr.or.kosa.service;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import kr.or.kosa.action.Action;
import kr.or.kosa.action.ActionForward;
import kr.or.kosa.dao.RegisterDao;
import kr.or.kosa.dto.RegisterDto;

public class LoginOkServiceAction implements Action {

	@Override
	public ActionForward execute(HttpServletRequest request, HttpServletResponse response) {

		// 로직 처리 시작
		int id = Integer.parseInt(request.getParameter("id"));
		String pwd = request.getParameter("pwd");

		// dao 객체 불러와서 처리

		RegisterDao dao = new RegisterDao();
		RegisterDto dto = dao.selectByIdPwd(id, pwd);

		if (dto != null) {
			HttpSession session = request.getSession();
			session.setAttribute("id", dto.getId());
		}

		// 뷰 설정하기
		ActionForward forward = new ActionForward();
		forward.setRedirect(false);
		forward.setPath("/WEB-INF/views/login/login_welcome.jsp");
		return forward;
	}
}