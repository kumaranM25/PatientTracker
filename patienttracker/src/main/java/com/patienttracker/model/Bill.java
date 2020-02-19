package com.patienttracker.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Transient;

@Entity
public class Bill {
	@Column(name = "BillID", updatable = false, nullable = false)
	@GeneratedValue(strategy = GenerationType.AUTO)
	@Id
	private int billId;
	@Column(name = "PatientID")
	private int patientId;
	@Column(name = "DoctorID")
	private int doctorId;
	@Column(name = "BillDate")
	private String billDate;
	@Column(name = "MedicineID1")
	private int medicineId1;
	@Column(name = "Quantity1")
	private int quantity1;
	@Column(name = "Amount1")
	private int amount1;
	@Column(name = "MedicineID2")
	private int medicineId2;
	@Column(name = "Quantity2")
	private int quantity2;
	@Column(name = "Amount2")
	private int amount2;
	@Column(name = "MedicineID3")
	private int medicineId3;
	@Column(name = "Quantity3")
	private int quantity3;
	@Column(name = "Amount3")
	private int amount3;
	@Column(name = "MedicineID4")
	private int medicineId4;
	@Column(name = "Quantity4")
	private int quantity4;
	@Column(name = "Amount4")
	private int amount4;
	@Column(name = "MedicineID5")
	private int medicineId5;
	@Column(name = "Quantity5")
	private int quantity5;
	@Column(name = "Amount5")
	private int amount5;
	@Column(name = "TotalAmount")
	private int totalAmount;
	@Transient
	private String m1Desc;
	@Transient
	private String m2Desc;
	@Transient
	private String m3Desc;
	@Transient
	private String m4Desc;
	@Transient
	private String m5Desc;
	@Transient
	private int m1Price;
	@Transient
	private int m2Price;
	@Transient
	private int m3Price;
	@Transient
	private int m4Price;
	@Transient
	private int m5Price;

	public int getBillId() {
		return billId;
	}

	public void setBillId(int billId) {
		this.billId = billId;
	}

	public int getPatientId() {
		return patientId;
	}

	public void setPatientId(int patientId) {
		this.patientId = patientId;
	}

	public int getDoctorId() {
		return doctorId;
	}

	public void setDoctorId(int doctorId) {
		this.doctorId = doctorId;
	}

	public String getBillDate() {
		return billDate;
	}

	public void setBillDate(String billDate) {
		this.billDate = billDate;
	}

	public int getMedicineId1() {
		return medicineId1;
	}

	public void setMedicineId1(int medicineId1) {
		this.medicineId1 = medicineId1;
	}

	public int getQuantity1() {
		return quantity1;
	}

	public void setQuantity1(int quantity1) {
		this.quantity1 = quantity1;
	}

	public int getAmount1() {
		return amount1;
	}

	public void setAmount1(int amount1) {
		this.amount1 = amount1;
	}

	public int getMedicineId2() {
		return medicineId2;
	}

	public void setMedicineId2(int medicineId2) {
		this.medicineId2 = medicineId2;
	}

	public int getQuantity2() {
		return quantity2;
	}

	public void setQuantity2(int quantity2) {
		this.quantity2 = quantity2;
	}

	public int getAmount2() {
		return amount2;
	}

	public void setAmount2(int amount2) {
		this.amount2 = amount2;
	}

	public int getMedicineId3() {
		return medicineId3;
	}

	public void setMedicineId3(int medicineId3) {
		this.medicineId3 = medicineId3;
	}

	public int getQuantity3() {
		return quantity3;
	}

	public void setQuantity3(int quantity3) {
		this.quantity3 = quantity3;
	}

	public int getAmount3() {
		return amount3;
	}

	public void setAmount3(int amount3) {
		this.amount3 = amount3;
	}

	public int getMedicineId4() {
		return medicineId4;
	}

	public void setMedicineId4(int medicineId4) {
		this.medicineId4 = medicineId4;
	}

	public int getQuantity4() {
		return quantity4;
	}

	public void setQuantity4(int quantity4) {
		this.quantity4 = quantity4;
	}

	public int getAmount4() {
		return amount4;
	}

	public void setAmount4(int amount4) {
		this.amount4 = amount4;
	}

	public int getMedicineId5() {
		return medicineId5;
	}

	public void setMedicineId5(int medicineId5) {
		this.medicineId5 = medicineId5;
	}

	public int getQuantity5() {
		return quantity5;
	}

	public void setQuantity5(int quantity5) {
		this.quantity5 = quantity5;
	}

	public int getAmount5() {
		return amount5;
	}

	public void setAmount5(int amount5) {
		this.amount5 = amount5;
	}

	public int getTotalAmount() {
		return totalAmount;
	}

	public void setTotalAmount(int totalAmount) {
		this.totalAmount = totalAmount;
	}

	public String getM1Desc() {
		return m1Desc;
	}

	public void setM1Desc(String m1Desc) {
		this.m1Desc = m1Desc;
	}

	public String getM2Desc() {
		return m2Desc;
	}

	public void setM2Desc(String m2Desc) {
		this.m2Desc = m2Desc;
	}

	public String getM3Desc() {
		return m3Desc;
	}

	public void setM3Desc(String m3Desc) {
		this.m3Desc = m3Desc;
	}

	public String getM4Desc() {
		return m4Desc;
	}

	public void setM4Desc(String m4Desc) {
		this.m4Desc = m4Desc;
	}

	public String getM5Desc() {
		return m5Desc;
	}

	public void setM5Desc(String m5Desc) {
		this.m5Desc = m5Desc;
	}

	public int getM1Price() {
		return m1Price;
	}

	public void setM1Price(int m1Price) {
		this.m1Price = m1Price;
	}

	public int getM2Price() {
		return m2Price;
	}

	public void setM2Price(int m2Price) {
		this.m2Price = m2Price;
	}

	public int getM3Price() {
		return m3Price;
	}

	public void setM3Price(int m3Price) {
		this.m3Price = m3Price;
	}

	public int getM4Price() {
		return m4Price;
	}

	public void setM4Price(int m4Price) {
		this.m4Price = m4Price;
	}

	public int getM5Price() {
		return m5Price;
	}

	public void setM5Price(int m5Price) {
		this.m5Price = m5Price;
	}

}
