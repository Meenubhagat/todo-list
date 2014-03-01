package com.todolist.controller;

import java.util.Date;
//import java.util.List;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
//import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;
import org.springframework.web.servlet.view.RedirectView;

import com.todolist.exception.ShopNotFound;
import com.todolist.model.Todo;
import com.todolist.service.ToDoService;
//import com.todolist.repository.TodoRepository;


@Controller
@RequestMapping(value="/todo")
public class TodoController {
	
	@Autowired
	ToDoService todoService;
	
	@Autowired
	HttpServletRequest request;
	
	@RequestMapping(value="/create", method=RequestMethod.GET)
	public ModelAndView addTodo() {
		ModelAndView mav = new ModelAndView("todo-create");
		mav.addObject("title","hamara todo");
		return mav;
	}
	
	@RequestMapping(value="/save", method=RequestMethod.POST)// for tking inputput
	public ModelAndView saveTodo(){
		//ModelAndView mav = new ModelAndView("");
		System.out.println(request.getParameter("task_name"));
		System.out.println(request.getParameter("task_desc"));
		System.out.println(request.getParameter("task_status"));
		System.out.println(request.getParameter("task_priority"));
		System.out.println(request.getParameter("date"));
		Todo todo = new Todo();
		todo.setTitle(request.getParameter("task_name"));
		todo.setDesc(request.getParameter("task_desc").toString());
		todo.setStatus(request.getParameter("task_status"));
		todo.setPriority(request.getParameter("task_priority"));
		todo.setDate(new Date());
		todoService.create(todo);
		//return mav;
		return new ModelAndView(new RedirectView("list"));
	}
	
	
	@RequestMapping(value="/list", method=RequestMethod.GET)
	public ModelAndView viewTodo() {
		ModelAndView mav = new ModelAndView("todo-tableView");
		mav.addObject("title","new hamara todo");
		List<Todo> list = todoService.getAllTodo();
		mav.addObject("todos", list); //passing list to jsp page
		return mav;
	}
	
	@RequestMapping(value="/delete/{id}", method=RequestMethod.GET)
	public ModelAndView deleteShop(@PathVariable Integer id,
			final RedirectAttributes redirectAttributes) throws ShopNotFound {
		
		ModelAndView mav = new ModelAndView("redirect:/index.html");		
		
		Todo todo = todoService.delete(id);
		String message = "The shop "+todo.getTitle()+" was successfully deleted.";
		
		redirectAttributes.addFlashAttribute("message", message);
		return mav;
	}
	

}