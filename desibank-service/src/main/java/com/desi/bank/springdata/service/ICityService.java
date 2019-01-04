package com.desi.bank.springdata.service;

import java.util.List;

import com.desi.bank.springdata.service.model.CityVO;

public interface ICityService {

	List<CityVO> findCities();

}
