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
public class Admin {
private String username;
private String password;
@Id
private String email;
private String mobile;
public Admin() {
	
}
public String getUsername() {
	return username;
}
public void setUsername(String username) {
	this.username = username;
}
public String getPassword() {
	return password;
}
public void setPassword(String password) {
	this.password = password;
}
public String getEmail() {
	return email;
}
public void setEmail(String email) {
	this.email = email;
}
public String getMobile() {
	return mobile;
}
public void setMobile(String mobile) {
	this.mobile = mobile;
}
@Override
public String toString() {
	return "Admin [username=" + username + ", password=" + password + ", email=" + email + ", mobile=" + mobile + "]";
}

}
