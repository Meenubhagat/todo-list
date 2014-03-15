package com.todolist.repository;

import org.springframework.data.repository.CrudRepository;

import com.todolist.model.Register;

public interface  RegisterRespository extends CrudRepository<Register, Integer> {

}