package com.jsp.vote.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.jsp.vote.dao.CandidateDao;
import com.jsp.vote.dao.VoterDao;
import com.jsp.vote.entity.Candidate;
import com.jsp.vote.entity.Voter;

@Controller
public class VotingController
{
@RequestMapping("/displayHome")	
	public String displayHome()
	{
		return "Voting";
	}
@Autowired
private VoterDao dao;
@RequestMapping("/signup")
public String signup(Voter voter,Model model)
{
	dao.addVoter(voter);
	model.addAttribute("message","Registration Successful");
	return "VoterRegistration";
	
}
@Autowired
private CandidateDao canDao;
@RequestMapping("/voterLogin")
public String voterLogin(String email,String password,Model model)
{
	boolean status=dao.validaterVoter(email, password);
	if(status)
	{
		Voter vtr=dao.getVoter(email);
		List<Candidate> ls=canDao.getAllCandidates();
		model.addAttribute("listOfCand",ls);
		model.addAttribute("voter",vtr);
		return "UserDashboard";
				
	}
	else
	{
		model.addAttribute("loginStatus","Invalid credintials");
		return "SignIn";
		
	}
}
@RequestMapping("/viewAllVoters")
public String viewAllVoters(Model model)
{
	List<Voter> vList=dao.getAllVoters();
	model.addAttribute("allVoters",vList);
	return "DisplayVoters";
	
}
}

