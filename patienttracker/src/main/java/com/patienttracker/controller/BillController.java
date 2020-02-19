package com.patienttracker.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.patienttracker.model.Bill;
import com.patienttracker.service.BillService;
import com.patienttracker.service.DoctorService;
import com.patienttracker.service.PatientService;
import com.patienttracker.service.PrescriptionService;

@Controller
public class BillController {
	@Autowired BillService billService; 
	@Autowired PatientService patientservice;
	@Autowired DoctorService doctorservice;
	@Autowired PrescriptionService prescriptionService;

	@RequestMapping(value = "/createBill", method=RequestMethod.GET)
	public String createBill(Model model, @RequestParam("requestId") int requestId, @RequestParam("patientID") int patientID,
			@RequestParam("doctorID") int doctorID) {
			Bill bill = billService.createBill(requestId);
			model.addAttribute("patient", patientservice.getPatientById(patientID));
			model.addAttribute("doctor", doctorservice.getDoctorById(doctorID));
//			model.addAttribute("patient", billService.getPatientData());
//			model.addAttribute("doctor", billService.getDoctorData());
			model.addAttribute("prescription",  prescriptionService.getPrescriptionByRequestID(requestId));
			model.addAttribute("bill", bill);
		return "bill";
	}
}
