package com.patienttracker.service;

import java.util.List;

import com.patienttracker.model.Medicine;

public interface MedicineService {
	public void addMedicine(Medicine medicine);

	public void updateMedicine(Medicine medicine);

	public List<Medicine> listMedicine();

	public Medicine getMedicineByMedicineID(int medicineID);

	public void removeMedicine(int medicineID);

}
