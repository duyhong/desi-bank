package com.desi.bank.employee.web.controller.form;

import java.util.List;

import com.desi.bank.springdata.service.model.CityVO;

public class CityWrapper {

	private List<CityVO> cityVOs;

	public List<CityVO> getCityVOs() {
		return cityVOs;
	}

	public void setCityVOs(List<CityVO> cityVOs) {
		this.cityVOs = cityVOs;
	}
}
