package com.patienttracker.dao;

import java.util.List;

import com.patienttracker.model.Medicine;

public interface MedicineDao {
	public void addMedicine(Medicine medicine);

	public void updateMedicine(Medicine medicine);

	public List<Medicine> listMedicine();

	public Medicine getMedicineByMedicineID(int medicineID);

	public void removeMedicine(int medicineID);

}
