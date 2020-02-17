package com.patienttracker.serviceimpl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.patienttracker.dao.MedicineDao;
import com.patienttracker.model.Medicine;
import com.patienttracker.service.MedicineService;

@Service
public class MedicineServiceImpl implements MedicineService {
	@Autowired
	MedicineDao medicineDao;

	@Transactional
	public void addMedicine(Medicine medicine) {
		// TODO Auto-generated method stub
		System.out.println("medi service impl");
		medicineDao.addMedicine(medicine);
		
	}

	@Transactional
	public void updateMedicine(Medicine medicine) {
		// TODO Auto-generated method stub
		medicineDao.updateMedicine(medicine);
		
	}

	@Transactional
	public List<Medicine> listMedicine() {
		// TODO Auto-generated method stub
		return this.medicineDao.listMedicine();
	}

	@Transactional
	public Medicine getMedicineByMedicineID(int medicineID) {
		// TODO Auto-generated method stub
		return medicineDao.getMedicineByMedicineID(medicineID);
	}

	@Transactional
	public void removeMedicine(int medicineID) {
		// TODO Auto-generated method stub
		medicineDao.removeMedicine(medicineID);
	}

	
}
