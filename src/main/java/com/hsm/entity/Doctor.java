package com.hsm.entity;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name="doctorDetails")
public class Doctor {
	@Id
	String doctorId;
	@Column
	String name;
	@Column
	String specialist;
	@Column
	String password;
	@Column
	String phoneNumber;
	public String getDoctorId() {
		return doctorId;
	}

	public void setDoctorId(String doctorId) {
		this.doctorId = doctorId;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getSpecialist() {
		return specialist;
	}

	public void setSpecialist(String specialist) {
		this.specialist = specialist;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public Doctor() {
		super();
		// TODO Auto-generated constructor stub
	}

	public String getPhoneNumber() {
		return phoneNumber;
	}

	public void setPhoneNumber(String phoneNumber) {
		this.phoneNumber = phoneNumber;
	}

	public Doctor(String doctorId, String name, String specialist, String password, String phoneNumber) {
		super();
		this.doctorId = doctorId;
		this.name = name;
		this.specialist = specialist;
		this.password = password;
		this.phoneNumber = phoneNumber;
	}

	



}


