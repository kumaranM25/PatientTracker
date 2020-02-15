package com.patienttracker.service;

import com.patienttracker.model.Admin;
import com.patienttracker.model.User;

public interface LoginService {

	void saveRegistration(Admin admin);

	User retrieveUser(String emailId);

}
