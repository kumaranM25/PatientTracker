package com.patienttracker.serviceimpl;

import java.util.List;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.patienttracker.dao.ClerkDAO;
import com.patienttracker.model.Clerk;
import com.patienttracker.service.ClerkService;

@Service
public class ClerkServiceImpl implements ClerkService {

	@Autowired
	ClerkDAO clerkDAO;

	@Transactional
	public void addClerk(Clerk clerk) {
		Clerk c = clerkDAO.fetchClerk(clerk.getEmailId());
		if(c == null) {
			clerkDAO.addClerk(clerk);
		}else {
			throw new NullPointerException("Clerk already Exists");
		}
	}

	@Transactional
	public void updateClerk(Clerk clerk) {
		clerkDAO.updateClerk(clerk);
	}

	@Transactional
	public List<Clerk> listClerks() {
		return this.clerkDAO.listClerks();
	}

	@Transactional
	public Clerk getClerkById(int clerkId) {
		return clerkDAO.getClerkById(clerkId);
	}

	@Transactional
	public void removeClerk(int clerkId) {
		clerkDAO.removeClerk(clerkId);
	}

	@Transactional
	public Clerk retrieveClerk(String emailId) {
		return clerkDAO.fetchClerk(emailId);
	}

}
