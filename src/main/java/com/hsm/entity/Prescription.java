package com.hsm.entity;


import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;



@Entity
@Table(name="prescription")

public class Prescription {

	@Id
	private Integer prescriptionID;
	@Column
	private String patientName;
	@Column 
	private Integer appointmentID;
	@Column
	private String description;
	@Column
	private String doctorName;
	public Integer getPrescriptionID() {
		return prescriptionID;
	}
	public void setPrescriptionID(Integer prescriptionID) {
		this.prescriptionID = prescriptionID;
	}
	public String getPatientName() {
		return patientName;
	}
	public void setPatientName(String patientName) {
		this.patientName = patientName;
	}
	public Integer getAppointmentID() {
		return appointmentID;
	}
	public void setAppointmentID(Integer appointmentID) {
		this.appointmentID = appointmentID;
	}
	public String getDescription() {
		return description;
	}
	public void setDescription(String description) {
		this.description = description;
	}
	public String getDoctorName() {
		return doctorName;
	}
	public void setDoctorName(String doctorName) {
		this.doctorName = doctorName;
	}
	public Prescription(Integer prescriptionID, String patientName, Integer appointmentID, String description,
			String doctorName) {
		super();
		this.prescriptionID = prescriptionID;
		this.patientName = patientName;
		this.appointmentID = appointmentID;
		this.description = description;
		this.doctorName = doctorName;
	}
	public Prescription() {
		super();
		// TODO Auto-generated constructor stub
	}
	
	
}
