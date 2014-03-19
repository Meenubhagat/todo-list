package com.todolist.service;

import java.util.List;

import com.todolist.model.Register;

public interface RegisterService {
	
	public Register create(Register register);
	
	public List<Register> getAllRegister();
	
	public Register getRegisterById(int id);

    public boolean deleteRegisterByID(int registerId);

}
