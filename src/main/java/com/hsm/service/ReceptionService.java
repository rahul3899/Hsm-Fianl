package com.hsm.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.hsm.entity.Receptionist;
import com.hsm.repository.ReceptionistRepository;
@Service
public class ReceptionService implements ReceptionInterface {
@Autowired
ReceptionistRepository receptionistRepository;
	@Override
	public Receptionist save(Receptionist a) {
		// TODO Auto-generated method stub
		return receptionistRepository.save(a);
	}

	@Override
	public Receptionist getById(String id) {
		// TODO Auto-generated method stub
		return receptionistRepository.getById(id);
	}

	@Override
	public void delete(Receptionist a) {
		// TODO Auto-generated method stub
		receptionistRepository.delete(a);
		
	}

	@Override
	public List<Receptionist> findAll() {
		// TODO Auto-generated method stub
		return receptionistRepository.findAll();
	}

}
