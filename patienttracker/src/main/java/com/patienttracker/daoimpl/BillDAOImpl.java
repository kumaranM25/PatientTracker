package com.patienttracker.daoimpl;

import org.hibernate.SessionFactory;
import org.springframework.stereotype.Repository;

import com.patienttracker.dao.BillDAO;

@Repository
public class BillDAOImpl implements BillDAO {
	private SessionFactory sessionFactory;

	public void setSessionFactory(SessionFactory sessionFactory) {
		this.sessionFactory = sessionFactory;
	}
}
