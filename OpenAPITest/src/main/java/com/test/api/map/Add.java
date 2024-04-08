package com.test.api.map;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.test.api.model.MapDAO;
import com.test.api.model.MarkerDTO;

public class Add extends HttpServlet {

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		//1. 데이터 가져오기(lat,lng)
		//2. DB 작업 > insert
		//3. 이동
		
		MapDAO dao = new MapDAO();
		
		MarkerDTO dto = new MarkerDTO();
		dto.setLat();
		dto.setLng();
		
		dao.add(dto);
	
		resp.sendRedirect("/api/map.do?ex=04");
	}
	
	
}
