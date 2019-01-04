package com.desi.bank.springdata.service;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.BeanUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.desi.bank.springdata.dao.entity.CityEntity;
import com.desi.bank.springdata.dao.repository.CityRepository;
import com.desi.bank.springdata.service.model.CityVO;

@Service("CityService")
public class CityService implements ICityService {

	//byType - >>!Qualifier , byName
		@Autowired 
		private CityRepository  cityRepository;

		@Override
		public List<CityVO> findCities(){ 
			List<CityVO> cityVOs=new ArrayList<>();
			List<CityEntity> cityEntities=cityRepository.findAll();
			for(CityEntity entity:cityEntities){
				CityVO cityVO=new CityVO();
				BeanUtils.copyProperties(entity, cityVO);
				cityVOs.add(cityVO);
			}
			return cityVOs;
		}
}
