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

import com.patienttracker.model.Clerk;
import com.patienttracker.service.ClerkService;

@Controller
public class ClerkController {

	@Autowired
	ClerkService clerkservice;

	@RequestMapping(value = "/clerk")

	public String clerkDetails(Model model) {
		model.addAttribute("listClerks", clerkservice.listClerks());
		return "clerkDisplay";
	}

	@RequestMapping(value = "/addClerk", method = RequestMethod.GET)

	public String listClerks(Model model) {
		model.addAttribute("clerk", new Clerk());
		return "addClerk";

	}

	@RequestMapping(value = "/saveClerk", method = RequestMethod.POST)

	public String addClerk(@ModelAttribute("clerk") @Validated Clerk clerk, BindingResult bindingResult, Model model) {

		if (bindingResult.hasErrors()) {
			model.addAttribute("clerkList", clerkservice.listClerks());
			return "addClerk";
		} else if (clerk.getClerkId() == 0) {

			this.clerkservice.addClerk(clerk);
		} else {
			this.clerkservice.updateClerk(clerk);
		}
		model.addAttribute("listClerks", clerkservice.listClerks());
		return "clerkDisplay";

	}

	@RequestMapping("/remove/{clerkId}")

	public String deleteClerk(@PathVariable("clerkId") int clerkId, Model model) {
		clerkservice.removeClerk(clerkId);
		model.addAttribute("listClerks", clerkservice.listClerks());
		return "clerkDisplay";
	}

	@RequestMapping("/edit/{clerkId}")
	public String editClerk(@PathVariable("clerkId") int clerkId, Map<String, Object> map) {
		map.put("clerk", clerkservice.getClerkById(clerkId));
		map.put("clerkList", clerkservice.listClerks());

		return "addClerk";
	}
}
