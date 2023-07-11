package com.cg.mts.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.cg.mts.pojo.Booking;

@Repository
public interface BookingRepository extends JpaRepository<Booking, Integer> {

}
