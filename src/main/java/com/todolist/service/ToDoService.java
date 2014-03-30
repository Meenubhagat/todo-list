package com.todolist.service;

import java.util.List;



import com.todolist.exception.TodoNotFound;
import com.todolist.model.Todo;
//import org.springframework.beans.factory.annotation.Autowired;
//import com.todolist.repository.TodoRepository;

public interface ToDoService {

	public Todo create(Todo todo);
	public Todo findById(int id);
	public Todo delete(int id);
	public List<Todo> getAllTodo();
	
	public Todo getTodoById(int id);
	public Todo update(Todo todo) throws TodoNotFound;
	public boolean deleteTodoById(int id);
}