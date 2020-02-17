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

import com.patienttracker.model.Prescription;
import com.patienttracker.service.PrescriptionService;

@Controller
public class PrescriptionController {
	@Autowired PrescriptionService prescriptionService;

	@RequestMapping(value = "/prescription")

	public String prescriptionDetails(Model model) {
		model.addAttribute("listPrescription", prescriptionService.listPrescription());
		return "prescriptionDisplay";
	}

	@RequestMapping(value = "/addPrescription", method = RequestMethod.GET)

	public String listPrescription(Model model) {
		model.addAttribute("prescription", new Prescription());
		return "addPrescription";

	}

	@RequestMapping(value = "/savePrescription", method = RequestMethod.POST)

	public String addPrescription(@ModelAttribute("prescription") @Validated Prescription prescription, BindingResult bindingResult, Model model) {

		if (bindingResult.hasErrors()) {
			model.addAttribute("prescriptionList", prescriptionService.listPrescription());
			return "addPrescription";
		} else if (prescription.getRequestID() == 0) {

			this.prescriptionService.addPrescription(prescription);
		} else {
			this.prescriptionService.updatePrescription(prescription);
		}
		model.addAttribute("listPrescription", prescriptionService.listPrescription());
		return "prescriptionDisplay";

	}

	@RequestMapping("/removePrescription/{requestID}")

	public String deletePrescription(@PathVariable("requestID") int requestID, Model model) {
		prescriptionService.removePrescription(requestID);
		model.addAttribute("listPrescription", prescriptionService.listPrescription());
		return "prescriptionDisplay";
	}

	@RequestMapping("/editPrescription/{requestID}")
	public String editPrescription(@PathVariable("requestID") int requestID, Map<String, Object> map) {
		map.put("prescription", prescriptionService.getPrescriptionByRequestID(requestID));
		map.put("prescriptionList", prescriptionService.listPrescription());

		return "addPrescription";
	}
}