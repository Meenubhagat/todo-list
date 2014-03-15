package com.todolist.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.todolist.model.Register;
import com.todolist.repository.RegisterRespository;
import com.todolist.service.RegisterService;

@Service
public class RegisterServiceImpl implements RegisterService {

	@Override
	@Transactional
	public Register create(Register register) {
		Register createdRegister = register;
		return registerRepository.save(createdRegister);
	}

	@Autowired
	RegisterRespository registerRepository;
	
	@Override
	public List<Register> getAllRegister() {
		// TODO Auto-generated method stub
		return (List<Register>) registerRepository.findAll();
	}
	
}