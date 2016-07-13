package org.krams.service;

import java.util.List;

import org.krams.domain.GeneralInfo;
import org.krams.repository.GeneralInfoRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class GeneralInfoService {
	@Autowired
	private GeneralInfoRepository giRepository;
			
	public GeneralInfo read(GeneralInfo gi) {
		return gi;
	}
	
	public List<GeneralInfo> readAll() {
		return giRepository.findAll();
	}
}
