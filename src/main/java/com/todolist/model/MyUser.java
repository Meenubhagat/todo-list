package com.todolist.model;



import java.util.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name="tbl_myuser")
public class MyUser {
        
    @Id
    @GeneratedValue
    @Column(name="myuser_id")
    private Integer id;
    
    @Column(name="myuser_name")
    public String name;
    
    public Integer getId() {
		return id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getStatus() {
		return status;
	}

	public void setStatus(String status) {
		this.status = status;
	}

	public String getQualification() {
		return qualification;
	}

	public void setQualification(String qualification) {
		this.qualification = qualification;
	}

	public Date getDateofbirth() {
		return dateofbirth;
	}

	public void setDateofbirth(Date dateofbirth) {
		this.dateofbirth = dateofbirth;
	}



	@Column(name="user_address")
    public String address;

        
	@Column(name="user_status")
    public String status;
	
	@Column(name="user_Qualification")
	public String qualification;
	
	@Column(name="date_of_birth")
	public Date dateofbirth;

	public String getAddress() {
		return address;
	}

	public void setAddress(String address) {
		this.address = address;
	}
	
	
}