package com.test.api;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.test.api.model.BookDAO;
import com.test.api.model.BookDTO;
//MVC > Model + View(출력) + Controller(통제)
//Controller > 이 안에서 업무 짜지 않음 큰 흐름만 (업무 위임 > BOOKDAO)  > Model(Service)
//															 > ex.01.jsp > 화면 구현 > View
public class Ex01 extends HttpServlet {
	
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		// 요청으로 인해 받아온 데이터 
		
		// 요청 상황 2가지
		// 1. 처음 요청(url) //http://localhost:8090/api/ex01.do
		// 1. 검색 요청(<form>) //http://localhost:8090/api/ex01.do?word=zzz

		
		//System.out.println(" 호출");
		
		String word = req.getParameter("word");
		
		//System.out.println(word==null);
		//System.out.println(word.equals(""));
		
		if(word != null) {
			// 검색 중..
			
			// 모든 데이터를 다루는걸 다 DAO에 관리
			BookDAO dao = new BookDAO();
			
			ArrayList<BookDTO> list = dao.search(word);
			
			req.setAttribute("list", list); // ArrayList값 전체만 넘겨짐
			req.setAttribute("word", word); // word값도 알고 싶으면 word도 넘김
			
			// jsp에 돌려주기 위한 데이터들 전체 흐름들을 관리 
			
			
			
			
		}
		
		
		RequestDispatcher dispatcher = req.getRequestDispatcher("/WEB-INF/views/ex01.jsp");
		
		dispatcher.forward(req, resp);
		
		
	}
}
