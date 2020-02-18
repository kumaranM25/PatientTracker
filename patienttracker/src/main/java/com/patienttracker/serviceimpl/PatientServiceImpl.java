package com.patienttracker.serviceimpl;

import java.util.List;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.patienttracker.dao.PatientDAO;
import com.patienttracker.model.Patient;
import com.patienttracker.service.PatientService;

@Service
public class PatientServiceImpl implements PatientService {

	@Autowired
	PatientDAO patientDAO;

	@Transactional
	public void addPatient(Patient patient) {
		Patient p = patientDAO.fetchPatient(patient.getEmailId());
		if (p == null) {
			patientDAO.addPatient(patient);
		} else {
			throw new NullPointerException("Patient already Exists");
		}

	}

	@Transactional
	public void updatePatient(Patient patient) {
		patientDAO.updatePatient(patient);

	}

	@Transactional
	public List<Patient> listPatients() {
		return this.patientDAO.listPatients();
	}

	@Transactional
	public Patient getPatientById(int patientId) {
		return patientDAO.getPatientById(patientId);
	}

	@Transactional
	public void removePatient(int patientId) {
		patientDAO.removePatient(patientId);
	}

	public Patient retrievePatient(String emailId) {
		// TODO Auto-generated method stub
		return null;
	}

}
