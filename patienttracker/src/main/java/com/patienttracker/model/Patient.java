package com.patienttracker.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;
import javax.validation.constraints.Max;
import javax.validation.constraints.Min;
import javax.validation.constraints.NotNull;
import javax.validation.constraints.Pattern;
import javax.validation.constraints.Size;

import org.hibernate.validator.constraints.Email;
import org.hibernate.validator.constraints.NotEmpty;

@Entity
@Table(name = "PATIENT")
public class Patient {

	@Id
	@Column(name = "Patient_ID")
	@GeneratedValue(strategy = GenerationType.AUTO)
	private int patientId;

	@NotEmpty
	@Column(name = "First_Name")
	@Size(min=2,max=30)
	private String firstName;

	@Column(name = "Last_Name")
	private String lastName;

	@NotNull @Min(18) @Max(60)
	@Column(name = "Age")
	private int age;

	@Column(name = "Gender")
	private String gender;

	@NotEmpty
	@Column(name = "Date_Of_Birth")
	private String dateOfBirth;

	@NotNull
	@Pattern(regexp = "[0-9]{10}")
	@Column(name = "Mobile_Number")
	private String mobileNumber;

	@Pattern(regexp = "[0-9]{10}")
	@Column(name = "Alt_Number")
	private String altMobileNumber;

	@NotEmpty
	@Email(regexp = ".+@.+\\..+")
	@Column(name = "Email_ID", unique=true)
	private String emailId;

	@NotEmpty
	@Size(min = 5, max = 50)
	@Column(name = "Address")
	private String address;

	@NotEmpty
	@Column(name = "City")
	private String city;

	@NotEmpty
	@Column(name = "State")
	private String state;

	@NotNull
	@Pattern(regexp = "[0-9]{6}")
	@Column(name = "Zip_Code")
	private String zipCode;

	@Override
	public String toString() {
		return "Patient [patientId=" + patientId + ", firstName=" + firstName + ", lastName=" + lastName + ", age="
				+ age + ", gender=" + gender + ", dateOfBirth=" + dateOfBirth + ", mobileNumber=" + mobileNumber
				+ ", altMobileNumber=" + altMobileNumber + ", emailId=" + emailId + ", address=" + address + ", city="
				+ city + ", state=" + state + ", zipCode=" + zipCode + "]";
	}

	public int getPatientId() {
		return patientId;
	}

	public void setPatientId(int patientId) {
		this.patientId = patientId;
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

	public String getDateOfBirth() {
		return dateOfBirth;
	}

	public void setDateOfBirth(String dateOfBirth) {
		this.dateOfBirth = dateOfBirth;
	}

	public String getMobileNumber() {
		return mobileNumber;
	}

	public void setMobileNumber(String mobileNumber) {
		this.mobileNumber = mobileNumber;
	}

	public String getAltMobileNumber() {
		return altMobileNumber;
	}

	public void setAltMobileNumber(String altMobileNumber) {
		this.altMobileNumber = altMobileNumber;
	}

	public String getEmailId() {
		return emailId;
	}

	public void setEmailId(String emailId) {
		this.emailId = emailId;
	}

	public String getAddress() {
		return address;
	}

	public void setAddress(String address) {
		this.address = address;
	}

	public String getCity() {
		return city;
	}

	public void setCity(String city) {
		this.city = city;
	}

	public String getState() {
		return state;
	}

	public void setState(String state) {
		this.state = state;
	}

	public String getZipCode() {
		return zipCode;
	}

	public void setZipCode(String zipCode) {
		this.zipCode = zipCode;
	}

}
