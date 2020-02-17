package com.patienttracker.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;
import javax.validation.constraints.NotNull;
import javax.validation.constraints.Size;

import org.hibernate.validator.constraints.NotEmpty;

@Entity
@Table(name = "Medicine")
public class Medicine {
	@Id
	@Column(name = "Medicine_ID", nullable = false, updatable = false)
	@GeneratedValue(strategy = GenerationType.AUTO)
	private int medicineID;

	@NotEmpty
	@Column(name = "Medicine_Description")
	@Size(min = 2, max = 60)
	private String medicineDescription;

	@NotNull
	@Column(name = "Cure_For")
	private String cureFor;

	@NotNull
	@Column(name = "Manufacturing_Company")
	private String manufacturingCompany;

	@Column(name = "Dosage")
	private int dosage;

	@NotNull
	@Column(name = "Prescribed_For")
	private String prescribedFor;

	@NotNull
	@Column(name = "Amount")
	private int amount;

	public Medicine() {
		super();
	}

	public Medicine(int medicineID, String medicineDescription, String cureFor, String manufacturingCompany, int dosage,
			String prescribedFor, int amount) {
		super();
		this.medicineID = medicineID;
		this.medicineDescription = medicineDescription;
		this.cureFor = cureFor;
		this.manufacturingCompany = manufacturingCompany;
		this.dosage = dosage;
		this.prescribedFor = prescribedFor;
		this.amount = amount;
	}

	public int getMedicineID() {
		return medicineID;
	}

	public void setMedicineID(int medicineID) {
		this.medicineID = medicineID;
	}

	public String getMedicineDescription() {
		return medicineDescription;
	}

	public void setMedicineDescription(String medicineDescription) {
		this.medicineDescription = medicineDescription;
	}

	public String getCureFor() {
		return cureFor;
	}

	public void setCureFor(String cureFor) {
		this.cureFor = cureFor;
	}

	public String getManufacturingCompany() {
		return manufacturingCompany;
	}

	public void setManufacturingCompany(String manufacturingCompany) {
		this.manufacturingCompany = manufacturingCompany;
	}

	public int getDosage() {
		return dosage;
	}

	public void setDosage(int dosage) {
		this.dosage = dosage;
	}

	public String getPrescribedFor() {
		return prescribedFor;
	}

	public void setPrescribedFor(String prescribedFor) {
		this.prescribedFor = prescribedFor;
	}

	public int getAmount() {
		return amount;
	}

	public void setAmount(int amount) {
		this.amount = amount;
	}

	@Override
	public String toString() {
		return "Medicine [medicineID=" + medicineID + ", medicineDescription=" + medicineDescription + ", cureFor="
				+ cureFor + ", manufacturingCompany=" + manufacturingCompany + ", dosage=" + dosage + ", prescribedFor="
				+ prescribedFor + ", amount=" + amount + "]";
	}

}
