package com.hos.Entity;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name="staff")
public class Staff {
	@Id @GeneratedValue
	private Long id;
	private String firstName;
	private String lastName;
	private String phoneNo;
	private String department;
	
	public Staff(Long id, String firstName, String lastName, String phoneNo, String department) {
		super();
		this.id = id;
		this.firstName = firstName;
		this.lastName = lastName;
		this.phoneNo = phoneNo;
		this.department = department;
	}
	public Staff() {
		super();
		// TODO Auto-generated constructor stub
	}
	public String getDepartment() {
		return department;
	}
	public Long getId() {
		return id;
	}
	public void setId(Long id) {
		this.id = id;
	}
	public void setDepartment(String department) {
		this.department = department;
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
	public String getPhoneNo() {
		return phoneNo;
	}
	public void setPhoneNo(String phoneNo) {
		this.phoneNo = phoneNo;
	}
	

}
