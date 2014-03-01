package com.todolist.model;


import java.util.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.Table;


@Entity
@Table(name="tbl_todo")
public class Todo {
        
    @Id
    @GeneratedValue
    @Column(name="todo_id")
    private Integer id;
    
    @Column(name="todo_title")
    public String title;
    
    public Integer getId() {
		return id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	public String getTitle() {
		return title;
	}

	public void setTitle(String title) {
		this.title = title;
	}

	public String getDesc() {
		return desc;
	}

	public String getPriority() {
		return priority;
	}

	public void setPriority(String priority) {
		this.priority = priority;
	}

	public String getStatus() {
		return status;
	}

	public void setStatus(String status) {
		this.status = status;
	}

	public Date getDate() {
		return date;
	}

	public void setDate(Date date) {
		this.date = date;
	}

	public void setDesc(String desc) {
		this.desc = desc;
	}

	@Column(name="todo_desc")
    public String desc;
	
	@Column(name="priority")
    public String priority;
        
	@Column(name="status")
    public String status;
	
	@Column(name="date")
    public Date date;
}