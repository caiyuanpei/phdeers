package com.cathysoft.phdeers.service.impls;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import javax.persistence.TypedQuery;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.cathysoft.phdeers.domains.Nation;
import com.cathysoft.phdeers.service.NationService;

@Service("nationService")
public class NationServiceImpl implements NationService {

	@PersistenceContext
	private EntityManager entityManager;
	
	@Override
	@Transactional(readOnly=true)
	public List<Nation> fetchNations() {
		TypedQuery<Nation> q = entityManager.createQuery(
				"SELECT n FROM Nation n", Nation.class);		
		return q.getResultList();
	}

}
