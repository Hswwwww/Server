package com.test.ajax;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.test.ajax.model.AjaxDAO;
import com.test.ajax.model.catDTO;

public class Ex09Data extends HttpServlet {
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		// 고양이 id의 최대값?
		AjaxDAO dao = new AjaxDAO();
		
		String m = dao.getNum();
		
		ArrayList<catDTO>list = dao.listCat();
		
		req.setAttribute("m", m);
		req.setAttribute("list", list);
		
		String catid = req.getParameter("catid");
		String x = req.getParameter("x");
		String y = req.getParameter("y");
		
		//AjaxDAO dao = new AjaxDAO();
	
		if(x == null & y ==null) {
			dao.addCat(catid);
		}else {
			catDTO dto = new catDTO();
			dto.setCatid(catid);
			dto.setX(x);
			dto.setY(y);
			
			dao.editCat(dto);
		}
	}
}


