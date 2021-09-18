package com.hsm.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.hsm.entity.Appointment;
import com.hsm.repository.AppointmentRepository;
@Service
public class AppointmentService implements AppointmentInterface {
			
	@Autowired
	AppointmentRepository appointmentRepository;
	
	
	@Override
	public Appointment save(Appointment a) {
		// TODO Auto-generated method stub
		return appointmentRepository.save(a);
	}

	@Override
	public Appointment getById(int id) {
		// TODO Auto-generated method stub
		return appointmentRepository.getById(id);
	}

	@Override
	public void delete(Appointment a) {
		// TODO Auto-generated method stub
		 appointmentRepository.delete(a);
	}

	@Override
	public List<Appointment> findAll() {
		// TODO Auto-generated method stub
		return appointmentRepository.findAll();
	}

}
