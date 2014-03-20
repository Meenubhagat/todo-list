package com.todolist.controller;


import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.view.RedirectView;

import com.todolist.model.Register;
import com.todolist.service.RegisterService;

@Controller
@RequestMapping(value="/register")
public class RegisterController {
	
	@Autowired
	RegisterService registerService;
	
	@Autowired 
	HttpServletRequest request;

	@RequestMapping(value="/create", method=RequestMethod.GET)
	public ModelAndView addRegister() {
		ModelAndView mav = new ModelAndView("register-create");
		mav.addObject("title","Create registeration");
		return mav;
	}
	
	
	@RequestMapping(value="/save", method=RequestMethod.POST)// for tking inputput
	public ModelAndView saveRegister(){
		System.out.println(request.getParameter("user_name"));
		System.out.println(request.getParameter("user_password"));
		System.out.println(request.getParameter("user_firstname"));
		System.out.println(request.getParameter("user_middlename"));
		System.out.println(request.getParameter("user_lastname"));
		System.out.println(request.getParameter("user_address"));
		System.out.println(request.getParameter("user_country"));
		System.out.println(request.getParameter("user_zipcode"));
		System.out.println(request.getParameter("user_email"));
		System.out.println(request.getParameter("user_gender"));
		System.out.println(request.getParameter("language"));
		System.out.println(request.getParameter("about"));
		System.out.println(request.getParameter("date_of_birth"));
		System.out.println(request.getParameter("relationshipstatus"));
		System.out.println(request.getParameter("studyfield"));
		System.out.println(request.getParameter("user_status"));
		System.out.println(request.getParameter("things"));
		System.out.println(request.getParameter("educationlevel"));
		
		Register register = new Register();
		register.setName(request.getParameter("user_name"));
		register.setPassword(request.getParameter("user_password"));
	    register.setFirstname(request.getParameter("user_firstname"));
		register.setMiddlename(request.getParameter("user_middlename")); 
		register.setLastname(request.getParameter("user_lastname"));
		register.setAddress(request.getParameter("user_address"));
		register.setCountry(request.getParameter("user_country"));
		register.setZipcode(request.getParameter("user_zipcode"));
		register.setEmail(request.getParameter("user_email"));
		register.setGender(request.getParameter("user_gender"));
		register.setLanguage(request.getParameter("language"));
		register.setAbout(request.getParameter("about"));
		register.setDate("date");
		register.setStatus(request.getParameter("relationshipstatus"));
		register.setField(request.getParameter("studyfield"));
		register.setPlan(request.getParameter("user_status"));
		register.setThings(request.getParameter("things"));
		register.setEducationlevel(request.getParameter("educationlevel"));
		
		registerService.create(register);
		return new ModelAndView(new RedirectView("registerlist"));
	}
	
	@RequestMapping(value="/registerlist", method=RequestMethod.GET)
	public ModelAndView viewTodo() {
		ModelAndView mav = new ModelAndView("register_view");
		mav.addObject("title","new hamara todo");
		List<Register> registerlist = registerService.getAllRegister();
		mav.addObject("register", registerlist); //passing list to jsp page
		return mav;
	}
	
	
	@RequestMapping(value="/edit/{id}", method=RequestMethod.GET)
	public ModelAndView editRegister(@PathVariable int id) {
		final Register reg = registerService.getRegisterById(id);
		ModelAndView mav = new ModelAndView("register-create");
		mav.addObject("register", reg);
		return mav;
	}

	@RequestMapping(value="/delete/{id}", method=RequestMethod.GET)
	public ModelAndView deleteRegister(@PathVariable int id){
		System.out.println("id:" + id);
		registerService.deleteRegisterByID(id);
		return new ModelAndView(new RedirectView("/todolist/register/registerlist"));
		
	}
	
	
	
	
	

}
