package com.sunbeaminfo.dao;

import org.springframework.data.jpa.repository.JpaRepository;

import com.sunbeaminfo.entities.Orders;
// import org.springframework.stereotype.Repository;
import com.sunbeaminfo.entities.User;

// @Repository
public interface OrderRepository extends JpaRepository<Orders, Long> {
}