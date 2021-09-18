package com.hsm.service;

import java.util.List;


import com.hsm.entity.Doctor;

public interface DoctorInterface {
	Doctor save(Doctor a);
	Doctor  getById(String id);
	void delete(Doctor a);
	List<Doctor> findAll();

}
