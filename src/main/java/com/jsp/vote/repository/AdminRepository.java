package com.jsp.vote.repository;

import org.springframework.data.jpa.repository.JpaRepository;

import com.jsp.vote.entity.Admin;

public interface AdminRepository extends JpaRepository<Admin, String> {

}
