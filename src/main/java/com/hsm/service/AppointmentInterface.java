package com.hsm.service;

import java.util.List;

import com.hsm.entity.Appointment;

public interface AppointmentInterface {

	Appointment save(Appointment a);
	Appointment getById(int id);
	void delete(Appointment a);
	List<Appointment> findAll();

}
