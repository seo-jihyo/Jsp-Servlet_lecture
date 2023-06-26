package kr.or.kosa.controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import kr.or.kosa.action.Action;
import kr.or.kosa.action.ActionForward;
import kr.or.kosa.dao.RegisterDao;
import kr.or.kosa.dto.RegisterDto;
import kr.or.kosa.service.LoginOkServiceAction;
import kr.or.kosa.service.RegisterOkServiceAction;

/*
Command 방식
@WebServlet("/web.do")
web.do?cmd=login
web.do?cmd=loginok

Url 방식
주소가 고정되면 안되요
@WebServlet("*.do")  // a.do , b.do
*.do >> login.do
*.do >> loginok.do

*/
@WebServlet("*.do")
public class FrontRegisterController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
  
    public FrontRegisterController() {
        super();
        
    }
    private void doProcess(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
    	
       	request.setCharacterEncoding("UTF-8");
    	
       	String requestURI = request.getRequestURI();
    	String contextPath = request.getContextPath();
    	String urlcommand = requestURI.substring(contextPath.length());
    	

    	Action action=null;
    	ActionForward forward=null;
    	
    	
    	if(urlcommand.equals("/register.do")) {
    		//UI 제공 (서비스 객체가 필요없다)
    		forward = new ActionForward();
    		forward.setRedirect(false);
    		forward.setPath("/WEB-INF/views/register/register.jsp");

    	}else if(urlcommand.equals("/registerok.do")) {
    		//UI 제공 + 서비스 필요
    		action = new RegisterOkServiceAction();
    		forward = action.execute(request, response); //request 클라이언트가 요청한 페이지당 1개씩 만들어지는 request객체
    	
    	}else if(urlcommand.equals("/login.do")) { //UI
    		forward = new ActionForward();
    		forward.setRedirect(false);
    		forward.setPath("/WEB-INF/views/login/login.jsp");

    	}else if(urlcommand.equals("/loginok.do")) { //UI + 로직
    		action = new LoginOkServiceAction(); //
    		forward = action.execute(request, response); //request 클라이언트가 요청한 페이지당 1개씩 만들어지는 request객체
    	}
    
    	if(forward != null) {
    		if(forward.isRedirect()) { //true 페이지 재 요청 (location.href="페이지"
    			response.sendRedirect(forward.getPath());
    		}else { //기본적으로 forward ....
    			    //1. UI 전달된 경우
    			    //2. UI + 로직
    			RequestDispatcher dis = request.getRequestDispatcher(forward.getPath());
    			dis.forward(request, response);
    		}
    	}
	}
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doProcess(request, response);
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doProcess(request, response);
	}

}
