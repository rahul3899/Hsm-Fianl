package com.hsm.service;

import java.util.List;

import com.hsm.entity.Receptionist;

public interface ReceptionInterface {
	Receptionist save(Receptionist a);
	Receptionist  getById(String id);
	void delete(Receptionist a);
	List<Receptionist> findAll();

}
