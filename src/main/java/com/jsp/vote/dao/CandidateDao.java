package com.jsp.vote.dao;

import java.util.List;

import com.jsp.vote.entity.Candidate;

public interface CandidateDao {

	public void addNewCandidate(Candidate cand);

	public List<Candidate> getAllCandidates();

	public void doVoting(String candidate);

	public Candidate getCandidate(String candidate);

}
