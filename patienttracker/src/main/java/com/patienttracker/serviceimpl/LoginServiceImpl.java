package com.patienttracker.serviceimpl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.patienttracker.dao.LoginDAO;
import com.patienttracker.model.Admin;
import com.patienttracker.model.User;
import com.patienttracker.service.LoginService;

@Service
@Transactional
public class LoginServiceImpl implements LoginService{
	
	@Autowired LoginDAO loginDao; 

	public void saveRegistration(Admin admin) {
		loginDao.saveRegistration(admin);
		
	}

	public User retrieveUser(String emailId) {
		
		return loginDao.fetchUser(emailId);
	}

}
