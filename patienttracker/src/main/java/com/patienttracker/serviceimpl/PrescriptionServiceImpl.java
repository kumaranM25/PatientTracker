package com.patienttracker.serviceimpl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.patienttracker.dao.PrescriptionDao;
import com.patienttracker.model.Prescription;
import com.patienttracker.service.PrescriptionService;
@Service
public class PrescriptionServiceImpl implements PrescriptionService {
	@Autowired
	PrescriptionDao prescriptionDao;

	@Transactional
	public void addPrescription(Prescription prescription) {
		// TODO Auto-generated method stub
		prescriptionDao.addPrescription(prescription);
		
	}

	@Transactional
	public void updatePrescription(Prescription prescription) {
		// TODO Auto-generated method stub
		prescriptionDao.updatePrescription(prescription);
		
	}

	@Transactional
	public List<Prescription> listPrescription() {
		// TODO Auto-generated method stub
		return this.prescriptionDao.listPrescription();
	}

	@Transactional
	public Prescription getPrescriptionByRequestID(int requestID) {
		// TODO Auto-generated method stub
		return prescriptionDao.getPrescriptionByRequestID(requestID);
	}

	@Transactional
	public void removePrescription(int requestID) {
		// TODO Auto-generated method stub
		prescriptionDao.removePrescription(requestID);
		
	}

	
}
