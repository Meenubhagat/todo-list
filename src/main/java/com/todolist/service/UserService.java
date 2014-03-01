package com.todolist.service;

import org.springframework.beans.factory.annotation.Autowired;

import com.todolist.model.User;
import com.todolist.repository.UserRepository;

public class UserService {
  @Autowired
  UserRepository userRepository;
  
  public User getUserWithId10() {
      User user = userRepository.findOne(10);
      return user;
  }
}
