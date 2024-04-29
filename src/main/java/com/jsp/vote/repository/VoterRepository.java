package com.jsp.vote.repository;

import org.springframework.data.jpa.repository.JpaRepository;

import com.jsp.vote.entity.Voter;

public interface VoterRepository extends JpaRepository<Voter, String> {

}
