package com.todolist.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name="tbl_register")
public class Register {
	@Id
	@GeneratedValue
	@Column(name="register_id")
	private Integer id;
	
	@Column(name="name")
	public String name;
	
	@Column(name="password")
	public String password;
	
	@Column(name="firstname")
	public String firstname;
	
	public String getFirstname() {
		return firstname;
	}

	public void setFirstname(String firstname) {
		this.firstname = firstname;
	}

	public String getMiddlename() {
		return middlename;
	}

	public void setMiddlename(String middlename) {
		this.middlename = middlename;
	}

	public String getLastname() {
		return lastname;
	}

	public void setLastname(String lastname) {
		this.lastname = lastname;
	}

	@Column(name="middlename")
	public String middlename;
	
	@Column(name="lastname")
	public String lastname;
	
	@Column(name="address")
	public String address;
	
	@Column(name="country")
	public String country;
	
	@Column(name="zipcode")
	public String zipcode;
	
	@Column(name="email")
	public String email;
	
	@Column(name="gender")
	public String gender;
	
	@Column(name="language")
	public String language;
	
	@Column(name="about")
	public String about;
	
	@Column(name="date_of_birth")
	public String date;
	
	@Column(name="status")
	public String status;
	
	@Column(name="field")
	public String field;
	
	@Column(name="plan")
	public String plan;
	
	@Column(name="things")
	public String things;
	
	@Column(name="education_level")
	public String educationlevel;

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

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	

	public String getAddress() {
		return address;
	}

	public void setAddress(String address) {
		this.address = address;
	}

	public String getCountry() {
		return country;
	}

	public void setCountry(String country) {
		this.country = country;
	}

	public String getZipcode() {
		return zipcode;
	}

	public void setZipcode(String zipcode) {
		this.zipcode = zipcode;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getGender() {
		return gender;
	}

	public void setGender(String gender) {
		this.gender = gender;
	}

	public String getLanguage() {
		return language;
	}

	public void setLanguage(String language) {
		this.language = language;
	}

	public String getAbout() {
		return about;
	}

	public void setAbout(String about) {
		this.about = about;
	}

	public String getDate() {
		return date;
	}

	public void setDate(String date) {
		this.date = date;
	}

	public String getStatus() {
		return status;
	}

	public void setStatus(String status) {
		this.status = status;
	}

	public String getField() {
		return field;
	}

	public void setField(String field) {
		this.field = field;
	}

	public String getPlan() {
		return plan;
	}

	public void setPlan(String plan) {
		this.plan = plan;
	}

	public String getThings() {
		return things;
	}

	public void setThings(String things) {
		this.things = things;
	}

	public String getEducationlevel() {
		return educationlevel;
	}

	public void setEducationlevel(String educationlevel) {
		this.educationlevel = educationlevel;
	}

}
