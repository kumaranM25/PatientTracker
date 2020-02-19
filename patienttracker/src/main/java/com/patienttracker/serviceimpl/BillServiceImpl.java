package com.patienttracker.serviceimpl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.patienttracker.dao.BillDAO;
import com.patienttracker.dao.DoctorDAO;
import com.patienttracker.dao.MedicineDao;
import com.patienttracker.dao.PatientDAO;
import com.patienttracker.dao.PrescriptionDao;
import com.patienttracker.model.Bill;
import com.patienttracker.model.Medicine;
import com.patienttracker.model.Prescription;
import com.patienttracker.service.BillService;

@Service
@Transactional
public class BillServiceImpl implements BillService{
	@Autowired BillDAO billDao;
	@Autowired PrescriptionDao prescriptionDao;
	@Autowired MedicineDao medicineDao;
	@Autowired
	DoctorDAO doctorDAO;
	@Autowired
	PatientDAO patientDAO;

	public Bill createBill(int requestId) {
		Prescription prescription = prescriptionDao.getPrescriptionByRequestID(requestId);
		Bill bill = new Bill();
		Medicine m1 = medicineDao.getMedicineByMedicineID(prescription.getMedicineID1());
		Medicine m2 = medicineDao.getMedicineByMedicineID(prescription.getMedicineID2());
		Medicine m3 = medicineDao.getMedicineByMedicineID(prescription.getMedicineID3());
		Medicine m4 = medicineDao.getMedicineByMedicineID(prescription.getMedicineID4());
		Medicine m5 = medicineDao.getMedicineByMedicineID(prescription.getMedicineID5());
		
		bill.setM1Desc(m1.getMedicineDescription());
		bill.setM2Desc(m2.getMedicineDescription());
		bill.setM3Desc(m3.getMedicineDescription());
		bill.setM4Desc(m4.getMedicineDescription());
		bill.setM5Desc(m5.getMedicineDescription());
		
		bill.setQuantity1(prescription.getQuantity1());
		bill.setQuantity2(prescription.getQuantity2());
		bill.setQuantity3(prescription.getQuantity3());
		bill.setQuantity4(prescription.getQuantity4());
		bill.setQuantity5(prescription.getQuantity5());
		
		bill.setM1Price(m1.getAmount());
		bill.setM2Price(m2.getAmount());
		bill.setM3Price(m3.getAmount());
		bill.setM4Price(m4.getAmount());
		bill.setM5Price(m5.getAmount());
		
		bill.setAmount1(bill.getQuantity1()*bill.getM1Price());
		bill.setAmount2(bill.getQuantity2()*bill.getM2Price());
		bill.setAmount3(bill.getQuantity3()*bill.getM3Price());
		bill.setAmount4(bill.getQuantity4()*bill.getM4Price());
		bill.setAmount5(bill.getQuantity5()*bill.getM5Price());
		
		bill.setTotalAmount(bill.getAmount1()+bill.getAmount2()+bill.getAmount3()+bill.getAmount4()+bill.getAmount5());
		
		return bill;
	}

}
