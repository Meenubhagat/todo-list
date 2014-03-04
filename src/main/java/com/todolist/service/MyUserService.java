package com.todolist.service;

import java.util.List;

import com.todolist.model.MyUser;

public interface MyUserService{
	
	public MyUser create(MyUser myuser);
	
	public MyUser findById(int Id);
	
	public MyUser delete(int id);
	
	public List<MyUser>getAllMyUser();
	
}