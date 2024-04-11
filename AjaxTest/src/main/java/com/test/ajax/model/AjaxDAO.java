package com.test.ajax.model;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;

import com.test.util.DBUtil;

public class AjaxDAO {
	
	private Connection conn;
	private Statement stat;
	private PreparedStatement pstat;
	private ResultSet rs;
	
	public AjaxDAO() {
		this.conn = DBUtil.open();
		
	}
	
	public SurveyDTO get(int seq) {
		
		try {
			
			String sql = "select * from tblSurvey where seq = ?";
			
			pstat = conn.prepareStatement(sql);
			pstat.setInt(1, seq);
			
			rs = pstat.executeQuery();
			
			SurveyDTO dto = new SurveyDTO();
			
			if(rs.next()) {
				
				dto.setSeq(rs.getString("seq"));
				dto.setQuestion(rs.getString("question"));
				dto.setItem1(rs.getString("item1"));
				dto.setItem2(rs.getString("item2"));
				dto.setItem3(rs.getString("item3"));
				dto.setItem4(rs.getString("item4"));
				dto.setCnt1(rs.getInt("cnt1"));
				dto.setCnt2(rs.getInt("cnt2"));
				dto.setCnt3(rs.getInt("cnt3"));
				dto.setCnt4(rs.getInt("cnt4"));
				
				return dto;
			}
			
		} catch (Exception e) {
			System.out.println("AjaxDAO.get");
			e.printStackTrace();
		}
		
		return null;
	}
	
	
	public int check(String id) {
		
		try {
			String sql = "select count(*) as cnt from tblUser where id = ? ";
			
			pstat = conn.prepareStatement(sql);
			pstat.setString(1, id);
			
			rs = pstat.executeQuery();
			
			if(rs.next()) {
				return rs.getInt("cnt");
			}
		} catch (Exception e) {
			System.out.println("AjaxDAO.check");
			e.printStackTrace();
		}
		
		return 0;
	}
	
	public ArrayList<UserDTO> listUser(){
		
	
		try {
			
			String sql ="select * from tblUser";
			
			stat = conn.createStatement();
			rs = stat.executeQuery(sql);
			
			ArrayList<UserDTO>list = new ArrayList<UserDTO>();
			
			while(rs.next()) {
				UserDTO dto = new UserDTO();
				
				dto.setId(rs.getString("id"));
				dto.setPw(rs.getString("pw"));
				dto.setName(rs.getString("name"));
				dto.setLv(rs.getString("lv"));
				
				list.add(dto);
			}
			
			return list;
			
		} catch (Exception e) {
			System.out.println("AjaxDAO.listUsert");
			e.printStackTrace();
		}
		
		return null;
	}

	public void addCat(String catid) {
	
		try {
			
			String sql = "insert into tblCat (catid,x,y) values (?,0,0)";
			
			pstat = conn.prepareStatement(sql);
			pstat.setString(1,catid);
			
			pstat.executeQuery();
			
			
		} catch (Exception e) {
			System.out.println("AjaxDAO.addCat");
			e.printStackTrace();
		}
		
	}

	public String getNum() {
		try {
			String sql = "select max(to_number(substr(catid,4))) as m from tblCat";
			
			stat = conn.createStatement();
			rs = stat.executeQuery(sql);
			
			if (rs.next()) {
				return rs.getString("m");
			}

			
			
		} catch (Exception e) {
			System.out.println("AjaxDAO.getNum");
			e.printStackTrace();
		}
		return null;
	}

	public void editCat(catDTO dto) {
		try {
			
			String sql = "update tblCat set x = ?, y=? where catid = ?";
			
			pstat = conn.prepareStatement(sql);
			pstat.setString(1, dto.getX());
			pstat.setString(2, dto.getY());
			pstat.setString(3, dto.getCatid());
			
			pstat.executeQuery();
			
		} catch (Exception e) {
			System.out.println("AjaxDAO.editCat");
			e.printStackTrace();
		}
		
	}

	public ArrayList<catDTO> listCat() {
		
		try {
			String sql = "select * from tblCat";
			stat = conn.createStatement();
			rs = stat.executeQuery(sql);
			
			ArrayList<catDTO>list = new ArrayList<catDTO>();
			
			while(rs.next()) {
				catDTO dto = new catDTO();
				dto.setCatid(rs.getString("catid"));
				dto.setX(rs.getString("x"));
				dto.setY(rs.getString("y"));
				
				list.add(dto);
			}
			
			return list;
			
			
		} catch (Exception e) {
			System.out.println("AjaxDAO.listCat");
			e.printStackTrace();
		}
		return null;
	}

	public int adddAddress(AddressDTO dto) {
		try {
			
			String sql = "insert into tblAddress(seq,name,age,gender,address) values (seqAddress.nextVal, ?, ?,?,?)";
			
			pstat = conn.prepareStatement(sql);
			pstat.setString(1,dto.getName());
			pstat.setString(2,dto.getAge());
			pstat.setString(3,dto.getGender());
			pstat.setString(4,dto.getAddress());
			
			return pstat.executeUpdate();
			
			
		} catch (Exception e) {
			System.out.println("AjaxDAO.adddAddress");
			e.printStackTrace();
		}
		return 0;
	}

	public ArrayList<AddressDTO> listAddress() {
		
		try {
			String sql ="select * from tblAddress order by seq asc";
			
			stat = conn.createStatement(); // 매개변수 없을때
			
			rs = stat.executeQuery(sql);
			
			ArrayList<AddressDTO> list = new ArrayList<AddressDTO>();
			
			while(rs.next()) {
				AddressDTO dto = new AddressDTO();
				dto.setSeq(rs.getString("seq"));
				dto.setName(rs.getString("name"));
				dto.setAge(rs.getString("age"));
				dto.setAddress(rs.getString("address"));
				
				list.add(dto);
				
			}
			
			return list;
		} catch (Exception e) {
			System.out.println("AjaxDAO.listAddress");
			e.printStackTrace();
		}
		
		return null;
	}

	public String getMaxSeq() {

		try {
			String sql = "select max(seq) as seq from tblAddress";
			stat = conn.createStatement();
			rs= stat.executeQuery(sql);
			
			if(rs.next()) {
				return rs.getString("seq");
			}
		} catch (Exception e) {
			System.out.println("AjaxDAO.getMaxSeq");
			e.printStackTrace();
		}
		return null;
	}

	public int delAddress(String seq) {
		try {
			
			String sql = "delete from tblAddress where seq =?";
			
			pstat = conn.prepareStatement(sql);
			pstat.setString(1, seq);
			
			return pstat.executeUpdate();
			
		} catch (Exception e) {
			System.out.println("AjaxDAO.delAddress");
			e.printStackTrace();
		}
		return 0;
	}

	

}
