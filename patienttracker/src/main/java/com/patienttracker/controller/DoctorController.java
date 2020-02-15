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
import com.patienttracker.model.Doctor;
import com.patienttracker.service.DoctorService;

@Controller
public class DoctorController {

	@Autowired
	DoctorService doctorservice;

	@RequestMapping(value = "/doctor")

	public String doctorDisplay(Model model) {
		model.addAttribute("listDoctors", doctorservice.listDoctors());
		return "doctorDisplay";
	}

	@RequestMapping(value = "/addDoctor", method = RequestMethod.GET)

	public String listDoctors(Model model) {
		model.addAttribute("doctor", new Doctor());
		return "addDoctor";

	}

	@RequestMapping(value = "/saveDoctor", method = RequestMethod.POST)

	public String addDoctor(@ModelAttribute("doctor") @Validated Doctor doctor, BindingResult bindingResult,
			Model model) {

		if (bindingResult.hasErrors()) {
			model.addAttribute("doctorList", doctorservice.listDoctors());
			return "addDoctor";
		} else if (doctor.getDoctorId() == 0) {

			this.doctorservice.addDoctor(doctor);
		} else {
			this.doctorservice.updateDoctor(doctor);
		}
		model.addAttribute("listDoctors", doctorservice.listDoctors());
		return "doctorDisplay";

	}

	@RequestMapping("doctor/remove/{doctorId}")

	public String deleteDoctor(@PathVariable("doctorId") int doctorId, Model model) {
		doctorservice.removeDoctor(doctorId);
		model.addAttribute("listDoctors", doctorservice.listDoctors());
		return "doctorDisplay";
	}

	@RequestMapping("doctor/edit/{doctorId}")
	public String editDoctor(@PathVariable("doctorId") int doctorId, Map<String, Object> map) {
		map.put("doctor", doctorservice.getDoctorById(doctorId));
		map.put("doctorList", doctorservice.listDoctors());

		return "addDoctor";
	}
}
