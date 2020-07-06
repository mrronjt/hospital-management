package com.hos.Entity;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "patient")
public class Patient {
	@Id @GeneratedValue
	private Long id;
	private String firstName;
	private String lastName;
	private String birthDate;
	private String phoneNo;
	private String unit;
	private String doctor;
	private String cured;
	private String type;
	
	
	
	public Patient() {
		super();
		// TODO Auto-generated constructor stub
	}


	public Patient(String firstName, String lastName, String birthDate, String phoneNo, String unit, String doctor,
			String cured, String type) {
		super();
		this.firstName = firstName;
		this.lastName = lastName;
		this.birthDate = birthDate;
		this.phoneNo = phoneNo;
		this.unit = unit;
		this.doctor = doctor;
		this.cured = cured;
		this.type = type;
	}
	

	public Long getId() {
		return id;
	}
	public void setId(Long id) {
		this.id = id;
	}
	
	public String getFirstName() {
		return firstName;
	}
	public void setFirstName(String firstName) {
		this.firstName = firstName;
	}
	public String getLastName() {
		return lastName;
	}
	public void setLastName(String lastName) {
		this.lastName = lastName;
	}
	public String getBirthDate() {
		return birthDate;
	}
	public void setBirthDate(String birthDate) {
		this.birthDate = birthDate;
	}
	public String getPhoneNo() {
		return phoneNo;
	}
	public void setPhoneNo(String phoneNo) {
		this.phoneNo = phoneNo;
	}
	public String getUnit() {
		return unit;
	}
	public void setUnit(String unit) {
		this.unit = unit;
	}
	public String getDoctor() {
		return doctor;
	}
	public void setDoctor(String doctor) {
		this.doctor = doctor;
	}
	public String getCured() {
		return cured;
	}
	public void setCured(String cured) {
		this.cured = cured;
	}


	public String getType() {
		return type;
	}


	public void setType(String type) {
		this.type = type;
	}
	
	
	
	
}
