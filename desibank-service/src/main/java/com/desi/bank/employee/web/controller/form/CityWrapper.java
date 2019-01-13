package com.desi.bank.employee.web.controller.form;

import java.util.List;

import javax.xml.bind.annotation.XmlRootElement;

import com.desi.bank.springdata.service.model.CityVO;

@XmlRootElement
public class CityWrapper {

	private List<CityVO> cityVOs;

	public List<CityVO> getCityVOs() {
		return cityVOs;
	}

	public void setCityVOs(List<CityVO> cityVOs) {
		this.cityVOs = cityVOs;
	}
}
