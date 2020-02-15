package com.patienttracker.dao;

import com.patienttracker.model.Admin;
import com.patienttracker.model.User;

public interface LoginDAO {

	void saveRegistration(Admin admin);

	User fetchUser(String emailId);

}
