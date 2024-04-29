package com.jsp.vote.entity;

import jakarta.persistence.Entity;
import jakarta.persistence.Id;
import lombok.Data;
import lombok.NoArgsConstructor;
import lombok.ToString;
@NoArgsConstructor
@Data
@ToString
@Entity
public class Candidate {
	private String firstname;
	private String lastname;
	private String dob;
	private String gender;
	private String aadharno;
	private String panno;
	private int age;
	@Id
	private String email;
	private String mobileno;
	private String address;
	private double monthlyincome;
	private double yearlyincome;
	private double totalproperty;
	private String criminalbackground;
	private int votes;
	public Candidate() {
		
	}
	public String getFirstname() {
		return firstname;
	}
	public void setFirstname(String firstname) {
		this.firstname = firstname;
	}
	public String getLastname() {
		return lastname;
	}
	public void setLastname(String lastname) {
		this.lastname = lastname;
	}
	public String getDob() {
		return dob;
	}
	public void setDob(String dob) {
		this.dob = dob;
	}
	public String getGender() {
		return gender;
	}
	public void setGender(String gender) {
		this.gender = gender;
	}
	public String getAadharno() {
		return aadharno;
	}
	public void setAadharno(String aadharno) {
		this.aadharno = aadharno;
	}
	public String getPanno() {
		return panno;
	}
	public void setPanno(String panno) {
		this.panno = panno;
	}
	public int getAge() {
		return age;
	}
	public void setAge(int age) {
		this.age = age;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getMobileno() {
		return mobileno;
	}
	public void setMobileno(String mobileno) {
		this.mobileno = mobileno;
	}
	public String getAddress() {
		return address;
	}
	public void setAddress(String address) {
		this.address = address;
	}
	public double getMonthlyincome() {
		return monthlyincome;
	}
	public void setMonthlyincome(double monthlyincome) {
		this.monthlyincome = monthlyincome;
	}
	public double getYearlyincome() {
		return yearlyincome;
	}
	public void setYearlyincome(double yearlyincome) {
		this.yearlyincome = yearlyincome;
	}
	public double getTotalproperty() {
		return totalproperty;
	}
	public void setTotalproperty(double totalproperty) {
		this.totalproperty = totalproperty;
	}
	public String getCriminalbackground() {
		return criminalbackground;
	}
	public void setCriminalbackground(String criminalbackground) {
		this.criminalbackground = criminalbackground;
	}
	public int getVotes() {
		return votes;
	}
	public void setVotes(int votes) {
		this.votes = votes;
	}
	@Override
	public String toString() {
		return "Candidate [firstname=" + firstname + ", lastname=" + lastname + ", dob=" + dob + ", gender=" + gender
				+ ", aadharno=" + aadharno + ", panno=" + panno + ", age=" + age + ", email=" + email + ", mobileno="
				+ mobileno + ", address=" + address + ", monthlyincome=" + monthlyincome + ", yearlyincome="
				+ yearlyincome + ", totalproperty=" + totalproperty + ", criminalbackground=" + criminalbackground
				+ ", votes=" + votes + "]";
	}
	
	
}
