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

import com.patienttracker.model.Medicine;
import com.patienttracker.service.MedicineService;


@Controller
public class MedicineController {
	@Autowired MedicineService medicineService;

	
	@RequestMapping(value = "/medicine")

	public String medicineDetails(Model model) {
		model.addAttribute("listMedicine", medicineService.listMedicine());
		return "medicineDisplay";
	}

	@RequestMapping(value = "/addMedicine", method = RequestMethod.GET)

	public String listMedicine(Model model) {
		model.addAttribute("medicine", new Medicine());
		return "addMedicine";

	}
	@RequestMapping(value = "/saveMedicine", method = RequestMethod.POST)

	public String addMedicine(@ModelAttribute("medicine")
	@Validated Medicine medicine, BindingResult bindingResult, Model model) {

		if (bindingResult.hasErrors()) {
			model.addAttribute("medicineList", medicineService.listMedicine());
			return "addMedicine";
		} else if (medicine.getMedicineID() == 0) {

			this.medicineService.addMedicine(medicine);
//			return "medicineDisplay";
		} else {
			this.medicineService.updateMedicine(medicine);
		}
		model.addAttribute("listMedicine", medicineService.listMedicine());
		return "medicineDisplay";

	}
	@RequestMapping("/removeMedicine/{medicineID}")

	public String deleteMedicine(@PathVariable("medicineID") int medicineID, Model model) {
		medicineService.removeMedicine(medicineID);
		model.addAttribute("listMedicine", medicineService.listMedicine());
		return "medicineDisplay";
	}

	@RequestMapping("/editMedicine/{medicineID}")
	public String editMedicine(@PathVariable("medicineID") int medicineID, Map<String, Object> map) {
		map.put("medicine", medicineService.getMedicineByMedicineID(medicineID));
		map.put("medicineList", medicineService.listMedicine());

		return "addMedicine";
	}
}
