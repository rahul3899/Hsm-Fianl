package com.hsm.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Component;

import com.hsm.entity.Doctor;
@Component
public interface DoctorRepository extends JpaRepository<Doctor,String> {
	

}
