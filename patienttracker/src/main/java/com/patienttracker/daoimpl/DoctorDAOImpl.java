package com.patienttracker.daoimpl;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.stereotype.Repository;

import com.patienttracker.dao.DoctorDAO;
import com.patienttracker.model.Doctor;

@Repository
public class DoctorDAOImpl implements DoctorDAO {

	// private static final Logger logger =
	// LoggerFactory.getLogger(DoctorDAOImpl.class);

	private SessionFactory sessionFactory;

	public void setSessionFactory(SessionFactory sf) {
		this.sessionFactory = sf;
	}

	public void addDoctor(Doctor doctor) {
		Session session = this.sessionFactory.getCurrentSession();
		session.persist(doctor);
		System.out.println("Doctors details saved successfully, Doctor Details=" + doctor);
		// logger.info("Clerk details saved successfully, Clerk
		// Details="+clerk);

	}

	public void updateDoctor(Doctor doctor) {
		Session session = this.sessionFactory.getCurrentSession();
		session.update(doctor);
		System.out.println("Doctor updated successfully, Doctor Details=" + doctor);
		// logger.info("Clerk updated successfully, Clerk Details="+clerk);

	}

	@SuppressWarnings("unchecked")
	public List<Doctor> listDoctors() {
		Session session = this.sessionFactory.getCurrentSession();
		List<Doctor> doctorsList = session.createQuery("from Doctor").list();
		for (Doctor doctor : doctorsList) {

			System.out.println("Doctor List::" + doctor);
			// logger.info("Clerk List::"+clerk);
		}
		return doctorsList;
	}

	public Doctor getDoctorById(int doctorId) {
		Session session = this.sessionFactory.getCurrentSession();
		Doctor doctor = (Doctor) session.load(Doctor.class, new Integer(doctorId));
		System.out.println("Doctor loaded successfully, Doctor details=" + doctor);
		// logger.info("Doctor loaded successfully, Doctor details="+doctor);
		return doctor;
	}

	public void removeDoctor(int doctorId) {
		Session session = this.sessionFactory.getCurrentSession();
		Doctor doctor = (Doctor) session.load(Doctor.class, new Integer(doctorId));
		if (null != doctor) {
			session.delete(doctor);
		}
		System.out.println("Doctor deleted successfully, Doctor details=" + doctor);
		// logger.info("Person deleted successfully, person details="+p);

	}
}
