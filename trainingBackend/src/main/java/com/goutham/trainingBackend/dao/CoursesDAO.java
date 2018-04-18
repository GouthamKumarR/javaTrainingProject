package com.goutham.trainingBackend.dao;

import java.util.List;

import com.goutham.trainingBackend.dto.Courses;

public interface CoursesDAO {
	
	
	Courses get(int id);
	List<Courses> list();
	boolean add(Courses courses);
	boolean update(Courses courses);
	boolean delete(Courses courses);

}
