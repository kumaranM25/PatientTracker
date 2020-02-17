package com.patienttracker.daoimpl;

import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.stereotype.Repository;

import com.patienttracker.dao.MedicineDao;
import com.patienttracker.model.Clerk;
import com.patienttracker.model.Medicine;

@Repository
public class MedicineDaoImpl implements MedicineDao {
	private SessionFactory sessionFactory;
	
	public void setSessionFactory(SessionFactory sessionFactory) {
		this.sessionFactory = sessionFactory;
	}

	public void addMedicine(Medicine medicine) {
		Session session = this.sessionFactory.getCurrentSession();
		session.persist(medicine);
		System.out.println("Medicine details saved successfully, medicine Details=" + medicine);
		// TODO Auto-generated method stub
		
	}

	public void updateMedicine(Medicine medicine) {
		// TODO Auto-generated method stub
		Session session = this.sessionFactory.getCurrentSession();
		session.update(medicine);
		System.out.println("Medicine updated successfully, medicine Details=" + medicine);
		
	}
	@SuppressWarnings("unchecked")
	public List<Medicine> listMedicine() {
		// TODO Auto-generated method stub
		Session session = this.sessionFactory.getCurrentSession();
		List<Medicine> medicineList = session.createQuery("from Medicine").list();
		for (Medicine medicine : medicineList) {

			System.out.println("Medicine List::" + medicine);
			
		}
		return medicineList;
	}

	public Medicine getMedicineByMedicineID(int medicineID) {
		// TODO Auto-generated method stub
		Session session = this.sessionFactory.getCurrentSession();
		Medicine medicine = (Medicine) session.load(Medicine.class, new Integer(medicineID));
		System.out.println("Medicine loaded successfully, Medicine details=" + medicine);
		return medicine;
	}

	public void removeMedicine(int medicineID) {
		// TODO Auto-generated method stub
		Session session = this.sessionFactory.getCurrentSession();
		Medicine medicine = (Medicine) session.load(Medicine.class, new Integer(medicineID));
		if (null != medicine) {
			session.delete(medicine);
		}
		System.out.println("Medicine deleted successfully, medicine details=" + medicine);
		
		
	}

}
