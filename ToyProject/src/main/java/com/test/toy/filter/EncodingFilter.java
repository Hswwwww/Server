package com.test.toy.filter;

import java.io.IOException;

import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.FilterConfig;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;

public class EncodingFilter implements Filter{
	// 어떤 서블릿을 부를때 이 필터를 실행시킬지 등록 > web.xml
	
	@Override
	public void init(FilterConfig filterConfig) throws ServletException {
	//System.out.println("필터 생성");
	}
	
	
	@Override
	public void doFilter(ServletRequest request, ServletResponse response, FilterChain chain)
			throws IOException, ServletException {
		//System.out.println("필터 동작");
		
		//인코딩처리
		request.setCharacterEncoding("UTF-8");
		
		// 그다음 필터 호출 or 서블릿 호출
		chain.doFilter(request, response);
	}
	
	
	@Override
	public void destroy() {
		//System.out.println("필터 소멸");
	
	}
}
