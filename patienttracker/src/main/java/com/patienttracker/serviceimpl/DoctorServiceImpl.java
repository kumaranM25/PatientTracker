package com.patienttracker.serviceimpl;

import java.util.List;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.patienttracker.dao.DoctorDAO;
import com.patienttracker.model.Doctor;
import com.patienttracker.service.DoctorService;

@Service
public class DoctorServiceImpl implements DoctorService {

	@Autowired
	DoctorDAO doctorDAO;

	@Transactional
	public void addDoctor(Doctor doctor) {
		 doctorDAO.addDoctor(doctor);
	}

	@Transactional
	public void updateDoctor(Doctor doctor) {
		doctorDAO.updateDoctor(doctor);
	}

	@Transactional
	public List<Doctor> listDoctors() {
		return this.doctorDAO.listDoctors();
	}

	@Transactional
	public Doctor getDoctorById(int doctorId) {
		return doctorDAO.getDoctorById(doctorId);
	}

	@Transactional
	public void removeDoctor(int doctorId) {
		doctorDAO.removeDoctor(doctorId);
	}
}
