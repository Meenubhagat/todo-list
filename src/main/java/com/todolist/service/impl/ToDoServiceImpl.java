package com.todolist.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.todolist.model.Todo;
import com.todolist.repository.TodoRepository;
import com.todolist.service.ToDoService;

@Service
public class ToDoServiceImpl implements ToDoService {
	
	@Override
	@Transactional
	public Todo create(Todo todo) {
		Todo createdTodo = todo;
		return todoRepository.save( createdTodo);
		
	}
	
	@Override
	@Transactional
	public Todo findById(int id) {
		return todoRepository.findOne(id);
		
	}

	@Override
	@Transactional
	public Todo delete(int id) {
		Todo deletedTodo = todoRepository.findOne(id);
		
		todoRepository.delete(deletedTodo);
		return deletedTodo;
	}


	@Autowired
	TodoRepository todoRepository;	
	
	@Override
	public List<Todo> getAllTodo() {
		return (List<Todo>) todoRepository.findAll(); //To fetch data from the database and return its lists.
	}

}
