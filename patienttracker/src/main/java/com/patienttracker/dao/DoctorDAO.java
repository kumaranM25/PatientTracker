package com.patienttracker.dao;

import java.util.List;

import com.patienttracker.model.Doctor;

public interface DoctorDAO {

	public void addDoctor(Doctor doctor);

	public void updateDoctor(Doctor doctor);

	public List<Doctor> listDoctors();

	public Doctor getDoctorById(int doctorId);

	public void removeDoctor(int doctorId);

}
