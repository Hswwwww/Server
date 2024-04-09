package com.test.ajax;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class Ex03Data extends HttpServlet {
	
	
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
	
		// DB 작업 > 데이터
		int count = 100;
		//ex03.jsp이랑 짝이 아니기 때문에 이 jsp에게 데이터 값을 주려면 Ex03.java와 연결해야함
		
		//resp.sendRedirect("/ajax/ex03.do?count=" + count); // request 로도 못해서 쿼리 스트링으로 넘겨야 함
		
		PrintWriter writer = resp.getWriter();
		
//		writer.println("<html>");
//		writer.println("<body>");
//		writer.println("<div>" + count + "<div>");
//		writer.println("</body>");
//		writer.println("</html>");
//		
		writer.print(count);
		writer.close();
		
		
	}
}
