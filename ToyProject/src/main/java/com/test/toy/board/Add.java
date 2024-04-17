package com.test.toy.board;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.HashMap;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.json.simple.JSONArray;
import org.json.simple.JSONObject;
import org.json.simple.parser.JSONParser;

import com.oreilly.servlet.MultipartRequest;
import com.oreilly.servlet.multipart.DefaultFileRenamePolicy;
import com.test.toy.board.model.BoardDTO;
import com.test.toy.board.repository.BoardDAO;
import com.test.util.OutputUtil;

@WebServlet("/board/add.do")
public class Add extends HttpServlet {

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		

		//새글 쓰기? 답변 쓰기?
		String reply = req.getParameter("reply");
		String thread = req.getParameter("thread");
		String depth = req.getParameter("depth");
		
		req.setAttribute("reply", reply);
		req.setAttribute("thread", thread);
		req.setAttribute("depth", depth);
		
		
		
		RequestDispatcher dispatcher = req.getRequestDispatcher("/WEB-INF/views/board/add.jsp");
		dispatcher.forward(req, resp);

	}
	
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		
		MultipartRequest multi = new MultipartRequest(
								req,
								req.getRealPath("/asset/place"),
								1024*1024*30,
								"UTF-8",
								new DefaultFileRenamePolicy()
				);
		//System.out.println(req.getRealPath("/asset/place"));
		
		
		
		//1. 데이터 가져오기(subject, content)
		//2. DB 작업 > insert
		//3. 결과
		
		//req.setCharacterEncoding("UTF-8");
		
		HttpSession session = req.getSession();
		String id = (String)session.getAttribute("id");
		
		
		String subject = multi.getParameter("subject");
		String content = multi.getParameter("content");
		String reply = multi.getParameter("reply");
		String tag = multi.getParameter("tag");
		
		//System.out.println(tag);
		
		
		//System.out.println(subject);
		
		BoardDAO dao = new BoardDAO();

		int thread = -1;
		int depth = -1;
		
		if(reply.equals("n")) {
			//새 글 쓰기
			thread = dao.getMaxThread() + 1000;
			depth = 0;
			
			
		}else {
			//답변글 쓰기
			int parentThread = Integer.parseInt(multi.getParameter("thread"));
			int parentDepth = Integer.parseInt(multi.getParameter("depth"));
			
			int previousThread = (int)Math.floor((parentThread -1)/1000)*1000;
			
			HashMap<String,Integer>map = new HashMap<String,Integer>();
			map.put("parentThread", parentThread);
			map.put("previousThread", previousThread);
			
			dao.updateThread(map);
			
			thread = parentThread -1;
			depth = parentDepth +1;
			
			
		}
		BoardDTO dto = new BoardDTO();
		
		dto.setSubject(subject);
		dto.setContent(content);
		dto.setId(id);
		dto.setThread(thread);
		dto.setDepth(depth);
		
		dto.setAttach(multi.getFilesystemName("attach"));
		
		
		int result = dao.add(dto);
		String bseq = dao.getBseq();
		
		
		
		// 해시 태그 작업
		if (tag != null && !tag.equals("") && !tag.equals("[]")) {
			
			try {
				// 문자열인 json 을 해석해서 자바 파일로 변환 ??
				
				JSONParser parser = new JSONParser();
				JSONArray arr = (JSONArray)parser.parse(tag);
				
				for(Object obj : arr) {
					
					JSONObject tagObj = (JSONObject)obj;
					String tagName = (String)tagObj.get("value");
					System.out.println(tagName);
					
					
					//해시 태그 추가
					
					if(dao.exisHashtag(tagName)) {
						dao.addHashtag(tagName);
					}
					
					String hseq = dao.getHseq(tagName);
					
					//관계 추가
					HashMap<String,String>map = new HashMap<String,String>();
					map.put("bseq", bseq);
					map.put("hseq", hseq);
					dao.addTagging(map);
				}
				
			} catch (Exception e) {
				System.out.println("Add.doPost");
				
				e.printStackTrace();
			}
			
		}
		
		if (result == 1) {
			resp.sendRedirect("/toy/board/list.do");
		} else {
			resp.setCharacterEncoding("UTF-8");
			PrintWriter writer = resp.getWriter();
			writer.print(OutputUtil.redirect("실패했습니다."));
			writer.close();
		}
		
	}

}













