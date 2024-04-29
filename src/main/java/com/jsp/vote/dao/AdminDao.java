package com.jsp.vote.dao;

import java.util.List;

import com.jsp.vote.entity.Admin;

public interface AdminDao {
	public boolean validateAdmin(String email, String password);

	public Admin getAdmin(String email);

	public List<Admin> getAllAdmins();
}
