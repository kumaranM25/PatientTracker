package com.patienttracker.dao;

import java.util.List;

import com.patienttracker.model.Prescription;

public interface PrescriptionDao {
	public void addPrescription(Prescription prescription);

	public void updatePrescription(Prescription prescription);

	public List<Prescription> listPrescription();

	public Prescription getPrescriptionByRequestID(int requestID);

	public void removePrescription(int requestID);

}
