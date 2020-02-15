package com.patienttracker.dao;

import java.util.List;
import com.patienttracker.model.Clerk;

public interface ClerkDAO {

	public void addClerk(Clerk clerk);

	public void updateClerk(Clerk clerk);

	public List<Clerk> listClerks();

	public Clerk getClerkById(int clerkId);
	
	public void removeClerk(int clerkId);

}
