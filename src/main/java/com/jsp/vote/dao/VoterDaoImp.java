package com.jsp.vote.dao;

import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import com.jsp.vote.entity.Voter;
import com.jsp.vote.repository.VoterRepository;

@Component
public class VoterDaoImp implements VoterDao {

	@Autowired
	private VoterRepository voterRepo;

	@Override
	public void addVoter(Voter voter) {
		voter.setStatus("Not Voted");
		voterRepo.save(voter);
	}

	@Override
	public boolean validaterVoter(String email, String password) {
		Optional<Voter> opt = voterRepo.findById(email);
		if (opt.isPresent()) {
			Voter v = opt.get();
			if (v.getPassword().equalsIgnoreCase(password)) {
				return true;
			}
		}
		return false;

	}

	@Override
	public Voter getVoter(String email) {
		Optional<Voter> opt = voterRepo.findById(email);
		if (opt.isPresent()) {
			Voter v = opt.get();
			return v;
		} else {
			return null;
		}

	}
	@Override
	public void changeStatus(String voter) {
		Voter v=voterRepo.findById(voter).get();
		v.setStatus("Voted");
		voterRepo.save(v);
		
	}
	@Override
	public List<Voter> getAllVoters() {
		return voterRepo.findAll();
	}

}
