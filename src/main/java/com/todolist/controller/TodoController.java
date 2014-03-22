package com.todolist.controller;


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
import org.springframework.web.servlet.view.RedirectView;

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
		System.out.println(request.getParameter("task_name"));
		System.out.println(request.getParameter("task_desc"));
		System.out.println(request.getParameter("task_status"));
		System.out.println(request.getParameter("task_priority"));
		System.out.println(request.getParameter("date"));
		
		Todo todo = new Todo();
		
		todo.setTitle(request.getParameter("task_name"));
		todo.setDesc(request.getParameter("task_desc"));
		todo.setStatus(request.getParameter("task_status"));
		todo.setPriority(request.getParameter("task_priority"));
		todo.setDate("date");
		
		todoService.create(todo);
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
	
	
	
	@RequestMapping(value="/edit/{id}", method=RequestMethod.GET)
	public ModelAndView editTodo(@PathVariable int id){
		final Todo todo1 = todoService.getTodoById(id);
		ModelAndView mav = new ModelAndView("todo-create");
		mav.addObject("todo", todo1);
		return mav;
		
	}
	
	@RequestMapping(value="/delete/{id}", method=RequestMethod.GET)
	public ModelAndView deleteTodo(@PathVariable int id){
		System.out.println("id:" + id);
		todoService.deleteTodoById(id);
		return new ModelAndView(new RedirectView("/todolist/todo/list"));
		
	}

}