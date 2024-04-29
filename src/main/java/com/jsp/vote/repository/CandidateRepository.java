package com.jsp.vote.repository;

import org.springframework.data.jpa.repository.JpaRepository;

import com.jsp.vote.entity.Candidate;

public interface CandidateRepository extends JpaRepository<Candidate,String> {

}
