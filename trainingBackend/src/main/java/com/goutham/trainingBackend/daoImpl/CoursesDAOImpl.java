package com.goutham.trainingBackend.daoImpl;

import java.util.List;

import javax.persistence.Query;

import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.goutham.trainingBackend.dao.CoursesDAO;
import com.goutham.trainingBackend.dto.Courses;

@Repository("coursesDAO")
@Transactional
public class CoursesDAOImpl implements CoursesDAO {
	
	@Autowired
	private SessionFactory sessionFactory;

	public Courses get(int id) {
		return sessionFactory.getCurrentSession().get(Courses.class, Integer.valueOf(id));
	}

	public List<Courses> list() {
		String selectActiveCategory = "FROM Courses WHERE active = :active";
		
		Query query = sessionFactory.getCurrentSession().createQuery(selectActiveCategory);
				
		query.setParameter("active", true);
						
		return query.getResultList();
	}

	public boolean add(Courses courses) {
		try {
			// add the courses to the database table
			sessionFactory.getCurrentSession().persist(courses);
			return true;
		} catch (Exception ex) {
			ex.printStackTrace();
			return false;
		}
	}

	public boolean update(Courses courses) {
		try {
			// add the courses to the database table
			sessionFactory.getCurrentSession().update(courses);
			return true;
		} catch (Exception ex) {
			ex.printStackTrace();
			return false;
		}
	}

	public boolean delete(Courses courses) {
		courses.setActive(false);
		
		try {
			// add the courses to the database table
			sessionFactory.getCurrentSession().update(courses);
			return true;
		} catch (Exception ex) {
			ex.printStackTrace();
			return false;
		}
	}

}
