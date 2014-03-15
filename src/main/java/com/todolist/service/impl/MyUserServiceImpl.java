package com.todolist.service.impl;



import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.todolist.exception.MyUserNotFound;
import com.todolist.model.MyUser;
import com.todolist.model.Todo;
import com.todolist.repository.MyUserRespository;
import com.todolist.service.MyUserService;

@Service
public class MyUserServiceImpl implements MyUserService {
	
	@Override
	@Transactional
	public MyUser create(MyUser myuser){
		MyUser createdMyUser = myuser;
		return myuserRepository.save(createdMyUser);
	}
	
	@Override
	@Transactional
	public MyUser findById(int Id){
		return myuserRepository.findOne(Id);
	}
	
	@Override
	@Transactional
	public MyUser delete(int id){
		MyUser deletedMyUser = myuserRepository.findOne(id);
		myuserRepository.delete(deletedMyUser);
		return deletedMyUser;
	}
	
	@Autowired
	MyUserRespository myuserRepository;
	
	@Override
	public List<MyUser> getAllMyUser() {
		return (List<MyUser>) myuserRepository.findAll(); //To fetch data from the database and return its lists.
	}

	@Override
	public Todo update(MyUser myuser) throws MyUserNotFound {
		// TODO Auto-generated method stub
		return null;
	}

	

}
