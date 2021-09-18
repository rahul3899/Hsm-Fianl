package com.hsm.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.hsm.entity.Admin;
import com.hsm.repository.AdminRepository;
@Service
public class AdminService implements AdminInterface {
	
	@Autowired
	AdminRepository adminRepository;

	@Override
	public Admin getById(String id) {
		// TODO Auto-generated method stub
		return adminRepository.getById(id);
	}

	@Override
	public Admin save(Admin a) {
		// TODO Auto-generated method stub
		return adminRepository.save(a);
	}

	
	
	

}
