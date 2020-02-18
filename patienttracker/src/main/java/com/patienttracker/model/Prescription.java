package com.patienttracker.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;
import javax.validation.constraints.NotNull;

@Entity
@Table(name = "Prescription")
public class Prescription {

	@Id
	@Column(name = "Request_ID", nullable = false, updatable = false)
	@GeneratedValue(strategy = GenerationType.AUTO)
	private int requestID;

	@NotNull
	@Column(name = "Patient_ID")
	private String patientID;

	@NotNull
	@Column(name = "Doctor_ID")
	private String doctorID;

	@NotNull
	@Column(name = "Request_Date")
	private String requestDate;

	@NotNull
	@Column(name = "Medicine_ID1")
	private int medicineID1;

	@NotNull
	@Column(name = "Quantity1")
	private int quantity1;

	@Column(name = "Medicine_ID2")
	private int medicineID2;

	@Column(name = "Quantity2")
	private int quantity2;

	@Column(name = "Medicine_ID3")
	private int medicineID3;

	@Column(name = "Quantity3")
	private int quantity3;

	@Column(name = "Medicine_ID4")
	private int medicineID4;

	@Column(name = "Quantity4")
	private int quantity4;

	@Column(name = "Medicine_ID5")
	private int medicineID5;

	@Column(name = "Quantity5")
	private int quantity5;

	@Column(name = "Other_Info")
	private String otherInfo;

	@Column(name = "Status")
	private String status;

	public Prescription() {
		super();
	}

	public Prescription(int requestID, String patientID, String doctorID, String requestDate, int medicineID1,
			int quantity1, int medicineID2, int quantity2, int medicineID3, int quantity3, int medicineID4,
			int quantity4, int medicineID5, int quantity5, String otherInfo, String status) {
		super();
		this.requestID = requestID;
		this.patientID = patientID;
		this.doctorID = doctorID;
		this.requestDate = requestDate;
		this.medicineID1 = medicineID1;
		this.quantity1 = quantity1;
		this.medicineID2 = medicineID2;
		this.quantity2 = quantity2;
		this.medicineID3 = medicineID3;
		this.quantity3 = quantity3;
		this.medicineID4 = medicineID4;
		this.quantity4 = quantity4;
		this.medicineID5 = medicineID5;
		this.quantity5 = quantity5;
		this.otherInfo = otherInfo;
		this.status = status;
	}

	public int getRequestID() {
		return requestID;
	}

	public void setRequestID(int requestID) {
		this.requestID = requestID;
	}

	public String getPatientID() {
		return patientID;
	}

	public void setPatientID(String patientID) {
		this.patientID = patientID;
	}

	public String getDoctorID() {
		return doctorID;
	}

	public void setDoctorID(String doctorID) {
		this.doctorID = doctorID;
	}

	public String getRequestDate() {
		return requestDate;
	}

	public void setRequestDate(String requestDate) {
		this.requestDate = requestDate;
	}

	public int getMedicineID1() {
		return medicineID1;
	}

	public void setMedicineID1(int medicineID1) {
		this.medicineID1 = medicineID1;
	}

	public int getQuantity1() {
		return quantity1;
	}

	public void setQuantity1(int quantity1) {
		this.quantity1 = quantity1;
	}

	public int getMedicineID2() {
		return medicineID2;
	}

	public void setMedicineID2(int medicineID2) {
		this.medicineID2 = medicineID2;
	}

	public int getQuantity2() {
		return quantity2;
	}

	public void setQuantity2(int quantity2) {
		this.quantity2 = quantity2;
	}

	public int getMedicineID3() {
		return medicineID3;
	}

	public void setMedicineID3(int medicineID3) {
		this.medicineID3 = medicineID3;
	}

	public int getQuantity3() {
		return quantity3;
	}

	public void setQuantity3(int quantity3) {
		this.quantity3 = quantity3;
	}

	public int getMedicineID4() {
		return medicineID4;
	}

	public void setMedicineID4(int medicineID4) {
		this.medicineID4 = medicineID4;
	}

	public int getQuantity4() {
		return quantity4;
	}

	public void setQuantity4(int quantity4) {
		this.quantity4 = quantity4;
	}

	public int getMedicineID5() {
		return medicineID5;
	}

	public void setMedicineID5(int medicineID5) {
		this.medicineID5 = medicineID5;
	}

	public int getQuantity5() {
		return quantity5;
	}

	public void setQuantity5(int quantity5) {
		this.quantity5 = quantity5;
	}

	public String getOtherInfo() {
		return otherInfo;
	}

	public void setOtherInfo(String otherInfo) {
		this.otherInfo = otherInfo;
	}

	public String getStatus() {
		return status;
	}

	public void setStatus(String status) {
		this.status = status;
	}

}
