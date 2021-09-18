
package com.hsm.repository;

import org.springframework.data.jpa.repository.JpaRepository;

import org.springframework.stereotype.Component;

import com.hsm.entity.Receptionist;

@Component 
public interface ReceptionistRepository extends JpaRepository<Receptionist,String> {


}
