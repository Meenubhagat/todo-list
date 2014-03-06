package com.todolist.service;

import java.util.List;

import com.todolist.exception.MyUserNotFound;
import com.todolist.model.MyUser;
import com.todolist.model.Todo;

public interface MyUserService{
	
	public MyUser create(MyUser myuser);
	
	public MyUser findById(int Id);
	
	public MyUser delete(int id);
	
	public List<MyUser>getAllMyUser();
	
	public Todo update(MyUser myuser) throws MyUserNotFound;
	
}