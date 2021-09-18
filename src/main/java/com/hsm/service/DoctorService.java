package com.hsm.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.hsm.entity.Doctor;
import com.hsm.repository.DoctorRepository;
@Service
public class DoctorService implements DoctorInterface{
	
	@Autowired
	DoctorRepository doctorRepository;

	@Override
	public Doctor save(Doctor a) {
		// TODO Auto-generated method stub
		return doctorRepository.save(a);
	}

	@Override
	public Doctor getById(String id) {
		// TODO Auto-generated method stub
		return doctorRepository.getById(id);
	}

	@Override
	public void delete(Doctor a) {
		
		doctorRepository.delete(a);
		
	}

	@Override
	public List<Doctor> findAll() {
		// TODO Auto-generated method stub
		
		return doctorRepository.findAll();
	}
	
	
	

}
