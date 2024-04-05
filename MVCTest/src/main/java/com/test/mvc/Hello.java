package com.test.mvc;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

//서블릿

public class Hello extends HttpServlet {
@Override
protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

	// 비즈니스 업무 처리 or 데이터베이스 처리
	// 화면 제작 > JSP에게 위임
	
	/*
	 * request는 되는데 send는 죽고 page context forward는 됨
	 */
	
	
		// JSP > 이동 > Servelt 
		// Servlet > 이동 > JSP
		// JSP > 이동 > JSP
	
	//resp.sendRedirect("/mvc/hello.jsp");
	

	
	
	
	int count = 100;
	req.setAttribute("count", count);
	
	//근데 pagecontext 얻어오기 어려움 그래서 클래스 사용 > RequestDispatcher
	
	RequestDispatcher dispatcher = req.getRequestDispatcher("/WEB-INF/views/hello.jsp");
	
	dispatcher.forward(req, resp);
	
	
	
	
	
	
	
	

}
}
