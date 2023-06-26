package kr.or.kosa.controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import kr.or.kosa.dao.RegisterDao;
import kr.or.kosa.dto.RegisterDto;

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
    private void doProcess(HttpServletRequest request, 
    		HttpServletResponse response) throws ServletException, IOException {
    	
    	//1. 한글
    	request.setCharacterEncoding("UTF-8");
    	//2. 데이터 받기  (입력데이터 , 판단데이터(command)
    	//String command = request.getParameter("cmd");    	
    	
    	//http://192.168.0.29:8090/WebServlet_8_Url/register.do
    	
    	String requestURI = request.getRequestURI();
    	String contextPath = request.getContextPath();
    	String urlcommand = requestURI.substring(contextPath.length());
    	
    	System.out.println("requestURI : " + requestURI);
    	System.out.println("contextPath : " + contextPath);
    	System.out.println("urlcommand : " + urlcommand);
    	
    	/*
    	  http://192.168.0.26:8090/WebServlet/register.do
    	  requestURI  : /WebServlet/register.do
    	  contextPath : /WebServlet
    	  urlcommand  : /register.do
    	  
    	  URL 마지막 주소를 추출하기 ... 판단의 근거 ...
    	 */
    	
    	
    	//3. 요청 서비스 판단 (command 통해서) 문자열 비교
    	//3.1 판단에 의해서 서비스 동작 (DB작업 , 암호화 , ....)
    	String viewpage="";
    	
    	if(urlcommand.equals("/register.do")) {
    		//회원가입 페이지(VIEW)
    		//VIEW 만 전달
    		viewpage="/WEB-INF/views/register/register.jsp";
    		
    		//필요에 따라서 request 데이터 저장
    		
    	} else if(urlcommand.equals("/registerok.do")) {
    		//회원가입 처리 (DB작업)
    		//입력 데이터 >> DB 연결 >> insert >> 여부 > 처리
    		int id = Integer.parseInt(request.getParameter("id"));
    		String pwd = request.getParameter("pwd");
    		String email = request.getParameter("email");
    		
    		RegisterDao dao = new RegisterDao();
    		
    		RegisterDto dto = new RegisterDto();
    		dto.setId(id);
    		dto.setPwd(pwd);
    		dto.setEmail(email);
    		
    		int result = dao.writeOk(dto);
    		
    		String resultdata="";
    		if(result > 0) {
    			resultdata = "welcome to kosa " + dto.getEmail() + "님";
    		}else {
    			resultdata = "Insert Fail ..... retry...";
    		}
    		
    	 //4. 데이터 저장
    		request.setAttribute("data", resultdata);
    	//뷰설정하기
    		viewpage="/WEB-INF/views/register/register_welcome.jsp";
    	
    		
    	} else if(urlcommand.equals("/registerList.do")) {  // select
    	
			viewpage="/WEB-INF/views/register/registerList.jsp";
			
			RegisterDao dao = new RegisterDao();
	
			List list = dao.selectAll();
	
			request.setAttribute("list", list);
			
			
		} else if(urlcommand.equals("/registerId.do")) {  // selectById
	    	
				viewpage="/WEB-INF/views/register/registerId.jsp";
				
				RegisterDao dao = new RegisterDao();
				
				RegisterDto dto	= dao.selectById(Integer.parseInt(request.getParameter("id")));
		
				request.setAttribute("dto", dto );
		}
	
    	//5. View 지정하기
    	RequestDispatcher dis = request.getRequestDispatcher(viewpage);
 	
    	//6. View forward
    	dis.forward(request, response);
	}
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doProcess(request, response);
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doProcess(request, response);
	}

}
