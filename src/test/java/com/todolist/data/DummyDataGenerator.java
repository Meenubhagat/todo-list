package com.todolist.data;

import java.util.Date;

import org.springframework.stereotype.Component;

import com.todolist.model.MyUser;
import com.todolist.model.Todo;
@Component
public class DummyDataGenerator {

	public Todo getTodo(){
		Todo todo = new Todo();
		todo.setDesc("desc");
		todo.setPriority("priority");
		todo.setStatus("status");
		todo.setTitle("title");
		todo.setStartDate("string");
		return todo;
	
	}
	
	public MyUser getMyUser(){
		MyUser myuser = new MyUser();
		myuser.setAddress("address");
		myuser.setName("name");
		myuser.setStatus("status");
		myuser.setQualification("qualification");
		myuser.setDateofbirth(new Date());
		return myuser;
		
	}
	

}
