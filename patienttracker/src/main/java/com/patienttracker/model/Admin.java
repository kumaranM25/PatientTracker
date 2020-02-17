package com.patienttracker.model;


import java.util.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Transient;
import javax.validation.constraints.Pattern;

import org.hibernate.validator.constraints.Email;
import org.hibernate.validator.constraints.NotEmpty;


@Entity
public class Admin {
	@Id
	@GeneratedValue(strategy=GenerationType.AUTO)
	@Column(name = "AdminId", updatable = false, nullable = false)
	private long adminId;
	@NotEmpty
	@Column(name = "FirstName",nullable=false)
	private String firstName;
	@NotEmpty
	@Column(name = "LastName",nullable=false)
	private String lastName;
	@Column(name = "Age")
	private int age;
	@NotEmpty
	@Column(name = "Gender",nullable=false)
	private String gender;
	@Pattern(regexp = "[0-9]{10}", message = "should not be empty and must conatins 10 digits numeric value")
	@Column(name = "ContactNumber",nullable=false)
	private String contactNumber;
	@NotEmpty(message="should not be empty and must contain characters 4 to 16")
	@Column(name = "Password",nullable=false)
	private String password;
	@Email
	@Column(name = "EmailId",unique=true,nullable=false)
	private String emailId;
	@NotEmpty
	@Transient
//	@Pattern(regexp = "^\\d{4}\\/(0[1-9]|1[012])\\/(0[1-9]|[12][0-9]|3[01])$", message = "must be yyyy/mm/dd")
	private String dateOfBirth;
	
	@Column(name = "DOB",nullable=false)
	private Date dob;
	@Column(name = "role",nullable=false)
	private String role;
	private boolean enabled;
	
	public long getAdminId() {
		return adminId;
	}
	public void setAdminId(long adminId) {
		this.adminId = adminId;
	}
	public String getFirstName() {
		return firstName;
	}
	public void setFirstName(String firstName) {
		this.firstName = firstName;
	}
	public String getLastName() {
		return lastName;
	}
	public void setLastName(String lastName) {
		this.lastName = lastName;
	}
	public int getAge() {
		return age;
	}
	public void setAge(int age) {
		this.age = age;
	}
	public String getGender() {
		return gender;
	}
	public void setGender(String gender) {
		this.gender = gender;
	}
	public String getContactNumber() {
		return contactNumber;
	}
	public void setContactNumber(String contactNumber) {
		this.contactNumber = contactNumber;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public String getEmailId() {
		return emailId;
	}
	public void setEmailId(String emailId) {
		this.emailId = emailId;
	}
	
	public String getDateOfBirth() {
		return dateOfBirth;
	}
	public void setDateOfBirth(String dateOfBirth) {
		this.dateOfBirth = dateOfBirth;
	}
	public Date getDob() {
		return dob;
	}
	public void setDob(Date dob) {
		this.dob = dob;
	}
	public String getRole() {
		return role;
	}
	public void setRole(String role) {
		this.role = role;
	}
	
	
	public boolean isEnabled() {
		return enabled;
	}
	public void setEnabled(boolean enabled) {
		this.enabled = enabled;
	}
	public Admin() {
		super();
	}
	
}
