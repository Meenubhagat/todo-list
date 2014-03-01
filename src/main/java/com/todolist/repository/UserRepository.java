package com.todolist.repository;

import java.util.List;

import org.springframework.data.repository.CrudRepository;

import com.todolist.model.User;

public interface UserRepository extends CrudRepository<User, Integer> {

    List<User> findByUsername(String username);
    
    List<User> findAll();
    
}
