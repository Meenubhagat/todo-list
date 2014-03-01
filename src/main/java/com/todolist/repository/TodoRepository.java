package com.todolist.repository;

import org.springframework.data.repository.CrudRepository;

import com.todolist.model.Todo;

public interface  TodoRepository extends CrudRepository<Todo, Integer> {

}
