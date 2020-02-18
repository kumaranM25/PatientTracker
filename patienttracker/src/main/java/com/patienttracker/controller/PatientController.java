package com.patienttracker.controller;

import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.validation.annotation.Validated;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.patienttracker.model.Patient;
import com.patienttracker.service.PatientService;

@Controller
public class PatientController {

	@Autowired
	PatientService patientservice;

	@RequestMapping(value = "/patient")

	public String patientDisplay(Model model) {
		model.addAttribute("listPatients", patientservice.listPatients());
		return "patientDisplay";
	}

	@RequestMapping(value = "/addPatient", method = RequestMethod.GET)

	public String listPatients(Model model) {
		model.addAttribute("patient", new Patient());
		return "addPatient";

	}

	@RequestMapping(value = "/savePatient", method = RequestMethod.POST)

	public String addPatient(@ModelAttribute("patient") @Validated Patient patient, BindingResult bindingResult, Model model) {

		if (bindingResult.hasErrors()) {
			model.addAttribute("patientList", patientservice.listPatients());
			return "addPatient";
		} else 
			try {
				patientservice.addPatient(patient);
			} catch (Exception e) {
				model.addAttribute("error", e.getMessage());
				return "addPatient";
			}
		if (patient.getPatientId() == 0) {

			this.patientservice.addPatient(patient);
		} else {
			this.patientservice.updatePatient(patient);
		}
		model.addAttribute("listPatients", patientservice.listPatients());
		model.addAttribute("message", "Patient Details Added Successfully");
		return "patientDisplay";

	}
	@RequestMapping("patient/remove/{patientId}")

	public String deletePatient(@PathVariable("patientId") int patientId,  Model model) {
		patientservice.removePatient(patientId);
		model.addAttribute("listPatients", patientservice.listPatients());
		model.addAttribute("error", "Patient Details Deleted Successfully");
		return "patientDisplay";
	}

	@RequestMapping("patient/edit/{patientId}")
	public String editPatient(@PathVariable("patientId") int patientId, Map<String, Object> map) {
		map.put("patient", patientservice.getPatientById(patientId));
		map.put("patientList", patientservice.listPatients());

		return "addPatient";
	}
}
