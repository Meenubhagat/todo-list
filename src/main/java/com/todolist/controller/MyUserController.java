package com.todolist.controller;


import java.util.Date;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.view.RedirectView;

import com.todolist.model.MyUser;
//import com.cencolshare.model.Todo;
import com.todolist.service.MyUserService;


@Controller
@RequestMapping(value="/myuser")
public class MyUserController {
	
	@Autowired
	//MyUserRespository myuserRespository;
	MyUserService myuserService;
	
	@Autowired
	HttpServletRequest request;
	
	@RequestMapping(value="/createmyuser", method=RequestMethod.GET)
	public ModelAndView addMyUser() {
		ModelAndView mav = new ModelAndView("myuser-create");
		mav.addObject("title1","our user");
		return mav;
	}

	
	@RequestMapping(value="/save", method=RequestMethod.POST)// for tking inputput
	public ModelAndView saveMyUser(){
		//ModelAndView mav = new ModelAndView("");
		System.out.println(request.getParameter("user_name"));
		System.out.println(request.getParameter("user_Address"));
		System.out.println(request.getParameter("user_status"));
		System.out.println(request.getParameter("user_qualification"));
		System.out.println(request.getParameter("date_of_birth"));
		MyUser myuser = new MyUser();
		myuser.setName(request.getParameter("user_name"));
		myuser.setAddress(request.getParameter("user_Address").toString());
		myuser.setStatus(request.getParameter("user_status"));
		myuser.setQualification(request.getParameter("user_qualification"));
		myuser.setDateofbirth(new Date());
		
		myuserService.create(myuser);
		//return mav;
		return new ModelAndView(new RedirectView("myuserlist"));
	}
	
	@RequestMapping(value="/myuserlist", method=RequestMethod.GET)
	public ModelAndView viewTodo() {
		ModelAndView mav = new ModelAndView("myuser-tableview");
		mav.addObject("title1","our user");
		List<MyUser> myuserlist = myuserService.getAllMyUser();
		mav.addObject("myusers",myuserlist); //passing list to jsp page
		return mav;
		/*
		MyUser m=new MyUser();
		m.setName("sumit");
		m.setStatus("status");
		m.setTitle("eeeee");
		//myuserRespository.save(m);
		List<MyUser> muser =(List<MyUser>) myuserService.getAllMyUser();
		for( int i=0; i<muser.size() ; i++)
		{
			MyUser m1 = muser.get(i);
			//log.debug(t1.getTitle());
			System.out.println(m1.getTitle());
				}
		//Todo todo = todoRepository.findOne(1);
		return mav; */
	}

}