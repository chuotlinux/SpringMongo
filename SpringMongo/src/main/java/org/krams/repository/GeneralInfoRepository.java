package org.krams.repository;

import java.util.List;

import org.krams.domain.GeneralInfo;
import org.springframework.data.mongodb.repository.MongoRepository;

public interface GeneralInfoRepository extends MongoRepository<GeneralInfo, String> {
	List<GeneralInfo> findAll();
}
