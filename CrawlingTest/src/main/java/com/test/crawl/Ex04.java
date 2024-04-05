package com.test.crawl;

import java.util.List;

import org.openqa.selenium.By;
import org.openqa.selenium.WebDriver;
import org.openqa.selenium.WebElement;
import org.openqa.selenium.chrome.ChromeDriver;
import org.w3c.dom.html.HTMLTableRowElement;

public class Ex04 {
	
	public static void main(String[] args) {
		
		//크롤링 + 자동화 테스트 도구(셀레니움)
		//m1();
		//m2();
		m3();

	}

	private static void m3() {
		String url = "http://localhost:8090/crawl/ex05.jsp";
		
		String webDriverID = "webdriver.chrome.driver";
		String path = "C:\\class\\dev\\chromedriver.exe";
		System.setProperty(webDriverID, path);
		
		WebDriver driver = new ChromeDriver();
		driver.get(url);
		
		List<WebElement> list = driver.findElements(By.cssSelector("#list2 > li"));
		
		for(WebElement li : list) {
			System.out.println(li.getText());
			// jsop은 js 실행 능력이 없다.
			// 근데 얘는 브라우저로 들어가서 읽기 때문에 js도 다 읽어옴..
			
		}
	}

	private static void m2() {
		
		String url = "http://lms1.sist.co.kr/worknet/SLogin.asp";
		
		String webDriverID = "webdriver.chrome.driver";
		String path = "C:\\class\\dev\\chromedriver.exe";
		System.setProperty(webDriverID, path);
		
		WebDriver driver = new ChromeDriver();
		driver.get(url);
		
		WebElement strLoginID = driver.findElement(By.id("strLoginID"));
		strLoginID.sendKeys("황시원");
		
		WebElement strLoginPwd = driver.findElement(By.id("strLoginPwd"));
		strLoginPwd.sendKeys("1743");
		
		WebElement btn = driver.findElement(By.cssSelector(".login-btn > input"));
		btn.click();
		// 얘는 기다림 없이 진행하기 떄문에 클릭하고 딜레이를 줘야함..
		// 그래야 새 페이지에서 또 정보 찾음!!
		try {
			Thread.sleep(3000);
			
		} catch (Exception e) {
			System.out.println("Ex04.m2");
			e.printStackTrace();
		}
		
		WebElement td = driver.findElement(By.cssSelector("#content > div > div > div > div.panel-body > form > table > thead > tr:nth-child(5) > td:nth-child(2)"));
		
		System.out.println(td.getText());
	}

	private static void m1() {
		
		String webDriverID = "webdriver.chrome.driver";
		String path = "C:\\class\\dev\\chromedriver.exe";
		System.setProperty(webDriverID, path);
		
		WebDriver driver = new ChromeDriver();
		
		String url = "http://localhost:8090/crawl/ex05.jsp";
		driver.get(url);
		
		
		WebElement btn1 = driver.findElement(By.id("btn1"));
		//btn1.click();
		
		WebElement txt1 = driver.findElement(By.id("txt1"));
		txt1.sendKeys("홍길동입니다.");
		
		
	}

}










