package com.todolist.service;

import java.util.List;

//import org.springframework.beans.factory.annotation.Autowired;

import com.todolist.model.Todo;
//import com.todolist.repository.TodoRepository;
public interface ToDoService {
	
	public Todo create(Todo todo);
	
	public Todo findById(int id);
	
	public Todo delete(int id);
	

	public List<Todo> getAllTodo();
}