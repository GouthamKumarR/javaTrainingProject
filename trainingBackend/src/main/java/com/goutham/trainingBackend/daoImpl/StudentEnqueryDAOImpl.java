package com.goutham.trainingBackend.daoImpl;

import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.goutham.trainingBackend.dao.StudentEnqueryDAO;
import com.goutham.trainingBackend.dto.StudentEnquery;


@Repository("enqueryDAO")
@Transactional
public class StudentEnqueryDAOImpl implements StudentEnqueryDAO {
	
	@Autowired
	private SessionFactory sessionFactory;

	public boolean addStudentEnquery(StudentEnquery enquery) {
		sessionFactory.getCurrentSession().persist(enquery);
		
		return false;
	}

}
