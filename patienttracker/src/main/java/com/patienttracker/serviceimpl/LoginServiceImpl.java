package com.patienttracker.serviceimpl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.patienttracker.dao.LoginDAO;
import com.patienttracker.model.Admin;
import com.patienttracker.model.User;
import com.patienttracker.service.LoginService;
import com.patienttracker.utils.ApplicationUtils;

@Service
@Transactional
public class LoginServiceImpl implements LoginService{
	
	@Autowired LoginDAO loginDao; 
	@Autowired BCryptPasswordEncoder passwordEncoder;

	public void saveRegistration(Admin admin) {
		admin.setDob(ApplicationUtils.getStringToDate(admin.getDateOfBirth()));
		admin.setRole("ROLE_ADMIN");
		admin.setEnabled(true);
		admin.setPassword(passwordEncoder.encode(admin.getPassword()));
		User user = loginDao.fetchUser(admin.getEmailId());
		if(user == null) {
			loginDao.saveRegistration(admin);
		}else {
			throw new NullPointerException("Email already Exists");
		}
		
	}

	

	public User retrieveUser(String emailId) {
		
		return loginDao.fetchUser(emailId);
	}

}
