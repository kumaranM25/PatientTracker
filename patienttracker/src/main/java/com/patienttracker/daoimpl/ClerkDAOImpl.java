package com.patienttracker.daoimpl;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.stereotype.Repository;

import com.patienttracker.dao.ClerkDAO;
import com.patienttracker.model.Clerk;

@Repository
public class ClerkDAOImpl implements ClerkDAO {

	// private static final Logger logger =
	// LoggerFactory.getLogger(ClerkDAOImpl.class);

	private SessionFactory sessionFactory;

	public void setSessionFactory(SessionFactory sessionFactory) {
		this.sessionFactory = sessionFactory;
	}

	public void addClerk(Clerk clerk) {
		Session session = this.sessionFactory.getCurrentSession();
		session.persist(clerk);
		System.out.println("Clerk details saved successfully, Clerk Details=" + clerk);
		// logger.info("Clerk details saved successfully, Clerk
		// Details="+clerk);

	}

	public void updateClerk(Clerk clerk) {
		Session session = this.sessionFactory.getCurrentSession();
		session.update(clerk);
		System.out.println("Clerk updated successfully, Clerk Details=" + clerk);
		// logger.info("Clerk updated successfully, Clerk Details="+clerk);

	}

	@SuppressWarnings("unchecked")
	public List<Clerk> listClerks() {
		Session session = this.sessionFactory.getCurrentSession();
		List<Clerk> clerksList = session.createQuery("from Clerk").list();
		for (Clerk clerk : clerksList) {

			System.out.println("Clerk List::" + clerk);
			// logger.info("Clerk List::"+clerk);
		}
		return clerksList;
	}

	public Clerk getClerkById(int clerkId) {
		Session session = this.sessionFactory.getCurrentSession();
		Clerk clerk = (Clerk) session.load(Clerk.class, new Integer(clerkId));
		System.out.println("Clerk loaded successfully, Clerk details=" + clerk);
		// logger.info("Clerk loaded successfully, Clerk details="+clerk);
		return clerk;
	}

	public void removeClerk(int clerkId) {
		Session session = this.sessionFactory.getCurrentSession();
		Clerk clerk = (Clerk) session.load(Clerk.class, new Integer(clerkId));
		if (null != clerk) {
			session.delete(clerk);
		}
		System.out.println("Clerk deleted successfully, Clerk details=" + clerk);
		// logger.info("Person deleted successfully, person details="+p);

		
	}
}
