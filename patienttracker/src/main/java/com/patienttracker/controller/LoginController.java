package com.patienttracker.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.security.web.authentication.logout.SecurityContextLogoutHandler;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.validation.BindingResult;
import org.springframework.validation.annotation.Validated;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.patienttracker.model.Admin;
import com.patienttracker.model.User;
import com.patienttracker.service.LoginService;

@Controller
public class LoginController {
	@Autowired
	LoginService loginService;
	

	@RequestMapping("/login")
	public String login(Model model) {
//		model.addAttribute("user", new User());
		return "login";
	}

	/*@RequestMapping("/loginCheck")
	public String loginValidate(@ModelAttribute("user") @Validated User user, BindingResult bindingResult,
			Model model) {

		User userValue = loginService.retrieveUser(user.getEmailId());
		if (userValue != null) {
			if (userValue.getPassword().equals(user.getPassword())) {
				model.addAttribute("user", user);
				return "home";
			}else{
				model.addAttribute("error", "Invalid Password");
			}
		} else {
			model.addAttribute("error", "Invalid Username or Password");
		}

		return "login";

	}*/
	
	/*@RequestMapping("/login")
	public String login(Model model, String error, String logout) {
		if (error != null)
			model.addAttribute("error", "Your username and password is invalid.");

		if (logout != null)
			model.addAttribute("message", "You have been logged out successfully.");

		return "login";
	}*/

	@RequestMapping(value = "/loginError")
	public String loginError(ModelMap model) {
		System.out.println("Entered failure authenticatin url");
		model.addAttribute("error", "Your username and password is invalid.");
		return "login";

	}

	@RequestMapping(value = "/logout")
	public String logout(ModelMap model,HttpServletRequest request,HttpServletResponse response) {
		System.out.println("Entered logout");
//		model.addAttribute("user", new User());
		Authentication auth = SecurityContextHolder.getContext().getAuthentication();
		if(auth != null) {
			new SecurityContextLogoutHandler().logout(request, response, auth);
		}
		model.addAttribute("message", "You have successfully logged off from application !");
		return "login";

	}
	
	@RequestMapping("/home")
	public String HomePage() {

		return "home";

	}

	@RequestMapping("/registration")
	public String registrationForm(Model model) {

		model.addAttribute("admin", new Admin());
		return "registration";

	}

	@RequestMapping(value = "/saveRegistration", method = RequestMethod.POST)
	public String addCustomer(@ModelAttribute("admin") @Validated Admin admin, BindingResult bindingResult,
			Model model) {
		if (bindingResult.hasErrors()) {

			return "registration";
		} else {
			loginService.saveRegistration(admin);
		}
		model.addAttribute("message", "User Details Saved Successfully");
		model.addAttribute("user", new User());
		return "login";
	}

	

}
