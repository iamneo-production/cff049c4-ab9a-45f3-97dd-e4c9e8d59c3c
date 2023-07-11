package com.cg.mts.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.cg.mts.pojo.User;
@Repository
public interface IAdminRepository extends JpaRepository<User, Integer> {

}