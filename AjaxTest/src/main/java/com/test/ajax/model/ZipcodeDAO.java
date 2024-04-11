package com.test.ajax.model;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;

import com.test.util.DBUtil;

public class ZipcodeDAO {
	
	private Connection conn;
	private Statement stat;
	private PreparedStatement pstat;
	private ResultSet rs;
	
	public ZipcodeDAO() {
		this.conn = DBUtil.open();
		
	}

	public ArrayList<ZipcodeDTO> searchZipcode(String dong) {
		try {
			
			//where dong like '%검색어%;
			String sql = "select * from zipcode where dong like '%' || ? || '%' order by zipcode asc";
			
			pstat = conn.prepareStatement(sql);
			pstat.setString(1, dong);
			
			rs= pstat.executeQuery();
			
			ArrayList<ZipcodeDTO> list = new ArrayList<ZipcodeDTO>();
			
			while(rs.next()) {
				ZipcodeDTO dto = new ZipcodeDTO();
				
				dto.setSeq(rs.getString("seq"));
				dto.setSido(rs.getString("sido"));
				dto.setGugun(rs.getString("gugun"));
				dto.setDong(rs.getString("dong"));
				dto.setBunji(rs.getString("bunji"));
				dto.setZipcode(rs.getString("zipcode"));
				
				list.add(dto);
			}
			
			return list;
			
		} catch (Exception e) {
			System.out.println("AjaxDAO.searchZipcode");
			e.printStackTrace();
		}
		return null;
	}
}
