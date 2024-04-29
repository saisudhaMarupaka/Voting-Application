package com.jsp.vote.dao;

import java.util.List;

import com.jsp.vote.entity.Voter;

public interface VoterDao {

	public void addVoter(Voter voter);

	public boolean validaterVoter(String email, String password);

	public Voter getVoter(String email);
	public void changeStatus(String voter);

	public List<Voter> getAllVoters();
}
