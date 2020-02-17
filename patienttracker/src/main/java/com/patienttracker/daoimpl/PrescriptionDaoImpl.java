package com.patienttracker.daoimpl;

import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.stereotype.Repository;

import com.patienttracker.dao.PrescriptionDao;
import com.patienttracker.model.Clerk;
import com.patienttracker.model.Prescription;
@Repository
public class PrescriptionDaoImpl implements PrescriptionDao {
	private SessionFactory sessionFactory;
	
	public void setSessionFactory(SessionFactory sessionFactory) {
		this.sessionFactory = sessionFactory;
	}

	public void addPrescription(Prescription prescription) {
		// TODO Auto-generated method stub
		Session session = this.sessionFactory.getCurrentSession();
		session.persist(prescription);
		System.out.println("Prescription details saved successfully, Prescription Details=" + prescription);
		
	}

	public void updatePrescription(Prescription prescription) {
		// TODO Auto-generated method stub
		Session session = this.sessionFactory.getCurrentSession();
		session.update(prescription);
		System.out.println("prescription updated successfully, prescription Details=" + prescription);
		
	}
	@SuppressWarnings("unchecked")
	public List<Prescription> listPrescription() {
		// TODO Auto-generated method stub
		Session session = this.sessionFactory.getCurrentSession();
		List<Prescription> prescriptionList = session.createQuery("from Prescription").list();
		for (Prescription prescription : prescriptionList) {

			System.out.println("Prescription List::" + prescription);
			
		}
		return prescriptionList;
	}

	public Prescription getPrescriptionByRequestID(int requestID) {
		Session session = this.sessionFactory.getCurrentSession();
		Prescription prescription = (Prescription) session.load(Prescription.class, new Integer(requestID));
		System.out.println("Prescription loaded successfully, Prescription details=" + prescription);
	
		return prescription;
	}

	public void removePrescription(int requestID) {
		// TODO Auto-generated method stub
		Session session = this.sessionFactory.getCurrentSession();
		Prescription prescription = (Prescription) session.load(Prescription.class, new Integer(requestID));
		if (null != prescription) {
			session.delete(prescription);
		}
		System.out.println("prescription deleted successfully, prescription details=" + prescription);
		
	}
	
	

}
