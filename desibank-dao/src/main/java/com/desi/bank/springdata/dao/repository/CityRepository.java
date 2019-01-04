package com.desi.bank.springdata.dao.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.desi.bank.springdata.dao.entity.CityEntity;

@Repository
public interface CityRepository extends JpaRepository<CityEntity, Integer> {

}