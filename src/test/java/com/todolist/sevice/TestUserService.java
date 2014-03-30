package com.todolist.sevice;



import static org.junit.Assert.assertEquals;
import static org.junit.Assert.assertNotNull;
import static org.junit.Assert.assertTrue;

import java.text.SimpleDateFormat;

import org.junit.Test;
import org.springframework.beans.factory.annotation.Autowired;

import com.todolist.init.BaseTestCase;
import com.todolist.model.MyUser;
import com.todolist.service.MyUserService;

public class TestUserService extends BaseTestCase{
	
	@Autowired
	MyUserService myUserService;
	
	@Test
	public void testSaveMyUser(){
		MyUser myuser = dummyDataGenerator.getMyUser();
		myuser = myUserService.create(myuser);
		assertNotNull(myuser);
		assertTrue(myuser.getId() > 0);
		
	}
	
	@Test
	public void testgetMyUser(){
		MyUser myuser = dummyDataGenerator.getMyUser();
		myuser = myUserService.create(myuser);
		assertNotNull(myuser);
		assertTrue(myuser.getId() > 0);
		MyUser savedMyUser = myUserService. findById(myuser.getId());
		
		assertEquals("Ids don't match", myuser.getId(), savedMyUser.getId());
		assertEquals("Address not found", myuser.getAddress(), savedMyUser.getAddress());
		SimpleDateFormat dt = new SimpleDateFormat("yyyy-MM-dd");
		String dt1 = dt.format(myuser.getDateofbirth());
		String dt2 = dt.format(savedMyUser.getDateofbirth());
		
		assertEquals("DOB not found", dt1, dt2);
		assertEquals("Names not found", myuser.getName(), savedMyUser.getName());
		assertEquals("qualification is null", myuser.getQualification(), savedMyUser.getQualification());
		assertEquals("status not get", myuser.getStatus(), savedMyUser.getStatus());
		
	}

}
