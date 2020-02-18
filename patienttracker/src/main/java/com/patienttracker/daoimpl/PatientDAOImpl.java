package com.patienttracker.daoimpl;

import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.stereotype.Repository;
import com.patienttracker.dao.PatientDAO;
import com.patienttracker.model.Doctor;
import com.patienttracker.model.Patient;

@Repository
public class PatientDAOImpl implements PatientDAO {

	private SessionFactory sessionFactory;

	public void setSessionFactory(SessionFactory sf) {
		this.sessionFactory = sf;
	}

	public void addPatient(Patient patient) {
		Session session = this.sessionFactory.getCurrentSession();
		session.persist(patient);
		System.out.println("Patient details saved successfully, Patient Details=" + patient);
			}

	public void updatePatient(Patient patient) {
		Session session = this.sessionFactory.getCurrentSession();
		session.update(patient);
		System.out.println("Patient updated successfully, Clerk Details=" + patient);
	}

	@SuppressWarnings("unchecked")
	public List<Patient> listPatients() {
		Session session = this.sessionFactory.getCurrentSession();
		List<Patient> patientList = session.createQuery("from Patient").list();
		for (Patient patient : patientList) {

			System.out.println("Patient List::" + patient);
		}
		return patientList;
	}

	public Patient getPatientById(int patientId) {
		Session session = this.sessionFactory.getCurrentSession();
		Patient patient = (Patient) session.load(Patient.class, new Integer(patientId));
		System.out.println("Patient loaded successfully, Patient details=" + patient);
		return patient;
	}

	public void removePatient(int patientId) {
		Session session = this.sessionFactory.getCurrentSession();
		Patient patient = (Patient) session.load(Patient.class, new Integer(patientId));
		if (null != patient) {
			session.delete(patient);
		}
		System.out.println("Patient deleted successfully, Patient details=" + patient);
	}

	public Patient fetchPatient(String emailId) {
		Session session = sessionFactory.getCurrentSession();
		Query qry = session.createQuery("from Patient where emailId=?");
		qry.setParameter(0, emailId);
		Patient patient = (Patient) qry.uniqueResult();
		return patient;
	}
}
