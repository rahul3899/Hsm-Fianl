package com.hsm.service;

import java.util.List;

import com.hsm.entity.Patient;

public interface PatientInterface {
	Patient save(Patient a);
	Patient getById(int id);
	void delete(Patient a);
	List<Patient> findAll();

}
