
package com.jsp.vote.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.jsp.vote.dao.AdminDao;
import com.jsp.vote.dao.CandidateDao;
import com.jsp.vote.entity.Admin;
import com.jsp.vote.entity.Candidate;
@Controller
public class AdminController 
{
	@Autowired
	private AdminDao admindao;
	@Autowired
	private CandidateDao candRepo;
	@RequestMapping("/adminLogin")
	public String adminLogin(String email,String password,Model model)
	{
		boolean status=admindao.validateAdmin(email,password);
		if(status)
		{
			List<Candidate> ls=candRepo.getAllCandidates();
			Admin ad=admindao.getAdmin(email);
			model.addAttribute("listOfCand",ls);
			model.addAttribute("admin",ad);
			return "AdminDashboard";
		}
		else
		{
			model.addAttribute("loginAdmin","In-valid Credintials");
			return "AdminSignIn";
		}
	}
	@RequestMapping("/viewAllAdmins")
	public String viewAllAdmins(Model model)
	{
		List<Admin> adList=admindao.getAllAdmins();
		model.addAttribute("allAdmins",adList);
		return "DisplayAdmins";
	}
 
  
}
