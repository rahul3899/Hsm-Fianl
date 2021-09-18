package com.hsm.entity;

import javax.persistence.Column;
import javax.persistence.Entity;

import javax.persistence.Id;
import javax.persistence.Table;



@Entity
@Table(name="appointment")
public class Appointment {

	
	@Id
	
	@Column(name="appointment_id")
	private Integer appointment_id;
	
	@Column(name="patientName")
	private String patientName;
	
	@Column(name="doctor_name")
	private String doctorName;
	
	@Column(name="appointment_date")
	private String date;

	@Column(name="prescription")
	private String prescription;
	
	@Column(name="confirmed")
	private String confirmed;

	public Integer getAppointment_id() {
		return appointment_id;
	}

	public void setAppointment_id(Integer appointment_id) {
		this.appointment_id = appointment_id;
	}

	public String getPatientName() {
		return patientName;
	}

	public void setPatientName(String patientName) {
		this.patientName = patientName;
	}

	public String getDoctorName() {
		return doctorName;
	}

	public void setDoctorName(String doctorName) {
		this.doctorName = doctorName;
	}

	public String getDate() {
		return date;
	}

	public void setDate(String date) {
		this.date = date;
	}

	public String getPrescription() {
		return prescription;
	}

	public void setPrescription(String prescription) {
		this.prescription = prescription;
	}

	public String getConfirmed() {
		return confirmed;
	}

	public void setConfirmed(String confirmed) {
		this.confirmed = confirmed;
	}

	public Appointment() {
		super();
		// TODO Auto-generated constructor stub
	}

	public Appointment(Integer appointment_id, String patientName, String doctorName, String date, String prescription,
			String confirmed) {
		super();
		this.appointment_id = appointment_id;
		this.patientName = patientName;
		this.doctorName = doctorName;
		this.date = date;
		this.prescription = prescription;
		this.confirmed = confirmed;
	}
	
	


	
}
