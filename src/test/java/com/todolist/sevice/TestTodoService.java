package com.todolist.sevice;

import static org.junit.Assert.assertEquals;
import static org.junit.Assert.assertNotNull;
import static org.junit.Assert.assertTrue;

import org.junit.Test;
import org.springframework.beans.factory.annotation.Autowired;

import com.todolist.init.BaseTestCase;
import com.todolist.model.Todo;
import com.todolist.service.ToDoService;

public class TestTodoService extends BaseTestCase {
	
	@Autowired
	ToDoService todoService;
	
	@Test
    public void testFindById() {
		int a = 10;
		int b = 20;
		int sum = a + b;
		assertEquals(sum,30);
    	
    }
	
	@Test
	public void testSaveTodo(){
		Todo todo = dummyDataGenerator.getTodo();
		todo = todoService.create(todo);
		assertNotNull(todo);
		assertTrue(todo.getId() > 0);
		
	}

	@Test
	public void testGetTodo(){
		Todo todo = dummyDataGenerator.getTodo();
		todo = todoService.create(todo);
		assertNotNull(todo);
		assertTrue(todo.getId() > 0);
		Todo savedTodo = todoService. findById(todo.getId());
		
		assertEquals("Ids don't match", todo.getId(), savedTodo.getId());
		assertEquals("Description not found ", todo.getDesc(), savedTodo.getDesc());
		assertEquals("No Tittle here ", todo.getTitle(), savedTodo.getTitle());
		assertEquals("No status found ", todo.getStatus(), savedTodo.getStatus());
		assertEquals(" There is no date ", todo.getStartDate(), savedTodo.getStartDate());
		assertEquals("Priority not there", todo.getPriority(), savedTodo.getPriority());
		

	}
}
