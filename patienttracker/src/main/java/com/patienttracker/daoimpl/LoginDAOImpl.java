package com.patienttracker.daoimpl;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.stereotype.Repository;

import com.patienttracker.dao.LoginDAO;
import com.patienttracker.model.Admin;
import com.patienttracker.model.User;

@Repository
public class LoginDAOImpl implements LoginDAO {
	private SessionFactory sessionFactory;

	public void setSessionFactory(SessionFactory sessionFactory) {
		this.sessionFactory = sessionFactory;
	}

	public void saveRegistration(Admin admin) {

		sessionFactory.getCurrentSession().save(admin);
	}

	public User fetchUser(String emailId) {
		Session session = sessionFactory.getCurrentSession();
		Query qry = session.createQuery("from Admin where emailId=?");
		qry.setParameter(0, emailId);
		Admin admin = (Admin) qry.uniqueResult();
		User user = new User();
		if (admin != null) {
			System.out.println(admin.getPassword());
			
			user.setEmailId(admin.getEmailId());
			user.setPassword(admin.getPassword());
		}else{
			user = null;
		}
		return user;
	}

}
