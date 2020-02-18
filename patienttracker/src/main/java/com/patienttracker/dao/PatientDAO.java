package com.patienttracker.dao;

import java.util.List;

import com.patienttracker.model.Patient;

public interface PatientDAO {

	public void addPatient(Patient patient);

	public void updatePatient(Patient patient);

	public List<Patient> listPatients();

	public Patient getPatientById(int patientId);
	
	public void removePatient(int patientId);
	
	Patient fetchPatient(String emailId);

}
