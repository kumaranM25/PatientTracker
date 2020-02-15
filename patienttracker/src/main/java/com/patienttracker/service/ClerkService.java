package com.patienttracker.service;

import java.util.List;

import com.patienttracker.model.Clerk;

public interface ClerkService {

	public void addClerk(Clerk clerk);

	public void updateClerk(Clerk clerk);

	public List<Clerk> listClerks();

	public Clerk getClerkById(int clerkId);

	public void removeClerk(int clerkId);

}
