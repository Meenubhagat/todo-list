package com.todolist.repository;

import org.springframework.data.repository.CrudRepository;


import com.todolist.model.MyUser;

public interface  MyUserRespository extends CrudRepository<MyUser, Integer> {

}

