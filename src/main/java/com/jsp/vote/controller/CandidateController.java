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
public class CandidateController {
	@Autowired
	private CandidateDao dao;
	

	@RequestMapping("/addCandidate")
	public String addCandidate(Candidate cand, Model model) {
		String message = "Your Application was Rejected.....";
		if (cand.getAge() < 24) {
			message += "Because Age is not Matching...!!";
		} else if (cand.getMonthlyincome() > 10000) {
			message += "Because monthly income is More....!!";
		} else if (cand.getYearlyincome() > 120000) {
			message += "Because Yearly income is More...!!!";
		} else if (cand.getTotalproperty() > 10000000) {
			message += "Because Total Property is more...!!";
		} 
		else if(cand.getCriminalbackground().equalsIgnoreCase("yes"))
		{
			message += "Because You are under Criminal Background...!!";
		}
		else {
			message = "Your Application is Approved..!!";
			dao.addNewCandidate(cand);
			model.addAttribute("check", true);
			model.addAttribute("status", message);
			return "ApplyCandidate";

		}
		model.addAttribute("status", message);
		model.addAttribute("check", false);
		return "ApplyCandidate";
	}
	@Autowired
	private VoterDao vDao;
	
	@RequestMapping("/addVote")
	public String addVote(String voter,String candidate,Model model)
	{
		dao.doVoting(candidate);
		vDao.changeStatus(voter);
		Candidate ca=dao.getCandidate(candidate);
		Voter v=vDao.getVoter(voter);
		model.addAttribute("name",ca.getFirstname());
		model.addAttribute("voter",v);
		model.addAttribute("listOfCand",dao.getAllCandidates());
		return "UserDashboard";
	}
	@RequestMapping("/viewAllCandidates")
	public String viewAllCandidates(Model model)
	{
		List<Candidate> cList=dao.getAllCandidates();
		model.addAttribute("allCandidates",cList);
		return "DisplayCandidates";
		
	}
}
