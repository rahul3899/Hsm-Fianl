package com.hsm.service;

import com.hsm.entity.Admin;

public interface AdminInterface {
	
	Admin getById(String id);
	Admin save(Admin a);
	
}
