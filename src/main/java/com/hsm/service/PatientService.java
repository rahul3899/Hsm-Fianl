package com.hsm.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.hsm.entity.Patient;
import com.hsm.repository.PatientRepository;
@Service
public class PatientService implements PatientInterface {

	@Autowired 
	PatientRepository patientRepository;
	
	
	
	public Patient save(Patient a) {
		// TODO Auto-generated method stub
		return patientRepository.save(a);
	}

	public Patient getById(int id) {
		// TODO Auto-generated method stub
		return patientRepository.getById(id);
	}

	
	public void delete(Patient a) {
		// TODO Auto-generated method stub
		patientRepository.delete(a);
		
	}


	public List<Patient> findAll() {
		// TODO Auto-generated method stub
		return patientRepository.findAll();
	}

}
