package com.patienttracker.daoimpl;

import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.stereotype.Repository;

import com.patienttracker.dao.ClerkDAO;
import com.patienttracker.model.Clerk;

@Repository
public class ClerkDAOImpl implements ClerkDAO {

	private SessionFactory sessionFactory;

	public void setSessionFactory(SessionFactory sessionFactory) {
		this.sessionFactory = sessionFactory;
	}

	public void addClerk(Clerk clerk) {
		Session session = this.sessionFactory.getCurrentSession();
		session.persist(clerk);
	}

	public void updateClerk(Clerk clerk) {
		Session session = this.sessionFactory.getCurrentSession();
		session.update(clerk);
	}

	@SuppressWarnings("unchecked")
	public List<Clerk> listClerks() {
		Session session = this.sessionFactory.getCurrentSession();
		List<Clerk> clerksList = session.createQuery("from Clerk").list();
		for (Clerk clerk : clerksList) {
			System.out.println("Clerk List::" + clerk);
		}
		return clerksList;
	}

	public Clerk getClerkById(int clerkId) {
		Session session = this.sessionFactory.openSession();
		Clerk clerk = new Clerk();
		clerk = (Clerk) session.load(Clerk.class, new Integer(clerkId));
		return clerk;
	}

	public void removeClerk(int clerkId) {
		Session session = this.sessionFactory.getCurrentSession();
		Clerk clerk = (Clerk) session.load(Clerk.class, new Integer(clerkId));
		if (null != clerk) {
			session.delete(clerk);
		}
	}

	public Clerk fetchClerk(String emailId) {
		Session session = sessionFactory.getCurrentSession();
		Query qry = session.createQuery("from Clerk where emailId=?");
		qry.setParameter(0, emailId);
		Clerk clerk = (Clerk) qry.uniqueResult();
		return clerk;
	}
}
