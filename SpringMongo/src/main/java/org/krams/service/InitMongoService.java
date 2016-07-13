package org.krams.service;

import java.util.List;
import org.krams.domain.GeneralInfo;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.mongodb.core.MongoTemplate;

/**
 * Service for initializing MongoDB with sample data using {@link MongoTemplate}
 */
public class InitMongoService {
	
	@Autowired
	private MongoTemplate mongoTemplate;
	List<GeneralInfo> gis;
	
	public void init() {
		gis = mongoTemplate.findAll(GeneralInfo.class);
	}
}
