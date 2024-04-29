package com.jsp.vote.dao;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import com.jsp.vote.entity.Candidate;
import com.jsp.vote.repository.CandidateRepository;
@Component
public class CandidateDaoImp implements CandidateDao {

	@Autowired
	private CandidateRepository candRepo;
	@Override
	public void addNewCandidate(Candidate cand) 
	{
		candRepo.save(cand);
		
	}
	@Override
	public List<Candidate> getAllCandidates() {
		List<Candidate> list=candRepo.findAll();
		return list;
		
	}
	@Override
	public void doVoting(String candidate)
	{
		Candidate candi=candRepo.findById(candidate).get();
		candi.setVotes(candi.getVotes()+1);
		candRepo.save(candi);
		
	}
	@Override
	public Candidate getCandidate(String candidate) {
		Candidate candi=candRepo.findById(candidate).get();
	return candi;	
	}
}
