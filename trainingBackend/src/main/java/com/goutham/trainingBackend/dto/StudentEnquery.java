package com.goutham.trainingBackend.dto;

import java.io.Serializable;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

@Entity
public class StudentEnquery implements Serializable{

	/**
	 * 
	 */
	private static final long serialVersionUID = 4551430726568840658L;
	
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private int id;
	private String name;
	private String email;
	private String collage;
	private String yearOfPassOut;
	private String graduation;
	private String phone;
	private String Course;
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getCollage() {
		return collage;
	}
	public void setCollage(String collage) {
		this.collage = collage;
	}
	public String getYearOfPassOut() {
		return yearOfPassOut;
	}
	public void setYearOfPassOut(String yearOfPassOut) {
		this.yearOfPassOut = yearOfPassOut;
	}
	public String getGraduation() {
		return graduation;
	}
	public void setGraduation(String graduation) {
		this.graduation = graduation;
	}
	public String getPhone() {
		return phone;
	}
	public void setPhone(String phone) {
		this.phone = phone;
	}
	public String getCourse() {
		return Course;
	}
	public void setCourse(String course) {
		Course = course;
	}
	@Override
	public String toString() {
		return "StudentEnquery [id=" + id + ", name=" + name + ", email=" + email + ", collage=" + collage
				+ ", yearOfPassOut=" + yearOfPassOut + ", graduation=" + graduation + ", phone=" + phone + ", Course="
				+ Course + "]";
	}
	

}
