package com.test.todo.test;

import static org.junit.jupiter.api.Assertions.*;

import java.util.ArrayList;

import org.junit.Ignore;
import org.junit.jupiter.api.Disabled;
import org.junit.jupiter.api.Test;

import com.test.todo.model.TodoDAO;
import com.test.todo.model.TodoDTO;

class DAOTest {
	
	@Disabled // 테스트에서 잠깐 제외할애들은 이렇게 하기
	@Test
	void testAddTodo() {
		
		TodoDAO dao = new TodoDAO();
		int result = dao.add("또 할일입니다.");
		
		assertEquals(1, result);
		
		
	}

	@Test
	void testListTodo() {
		TodoDAO dao = new TodoDAO();
		ArrayList<TodoDTO>list = dao.list("n");
		
		
		assertNotNull(list);
		
	}
	
	@Test
	void testCheckState() {
		
		TodoDAO dao = new TodoDAO();
		
		int result = dao.checkTodo("1");
		
		assertEquals(1, result);
	}
}






