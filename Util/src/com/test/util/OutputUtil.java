package com.test.util;

import java.io.PrintWriter;

public class OutputUtil {
	
	public static String redirect(String message) {
		
		StringBuilder sb = new StringBuilder();
		

		
		
		
		sb.append("<html>");
		sb.append("<head>");
		sb.append("<meta charset='UTF-8'>");
		sb.append("<body>");
		sb.append("<body>");
		sb.append("<script>");
		sb.append("alert('"+message+"');>");
		sb.append("history.back();");
		sb.append("</script>");
	
		sb.append("</body>");
		sb.append("</head>");
		sb.append("</html>");
		
		return sb.toString();
		
	}
	

}