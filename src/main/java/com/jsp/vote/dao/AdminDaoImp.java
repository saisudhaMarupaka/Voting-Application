package com.jsp.vote.dao;

import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import com.jsp.vote.entity.Admin;
import com.jsp.vote.repository.AdminRepository;
@Component
public class AdminDaoImp implements AdminDao {

	@Autowired
	private AdminRepository adminRepo;
	@Override
	public boolean validateAdmin(String email, String password) {
		Optional<Admin> opt=adminRepo.findById(email);
		if(opt.isPresent())
		{
			Admin a=opt.get();
			if(a.getPassword().equalsIgnoreCase(password))
			{
				return true;
			}
		}
		return false;
	}
	@Override
	public Admin getAdmin(String email) {
		
		return adminRepo.findById(email).get();
	}
	@Override
	public List<Admin> getAllAdmins() {
		
		return adminRepo.findAll();
	}
}