package com.cathysoft.phdeers.service.impls;

import java.util.LinkedHashMap;
import java.util.LinkedList;
import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import javax.persistence.TypedQuery;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.cathysoft.phdeers.domains.Region;
import com.cathysoft.phdeers.service.RegionService;

@Service("regionService")
public class RegionServiceImpl implements RegionService{

	@PersistenceContext
	private EntityManager entityManager;
	
	@Override
	@Transactional(readOnly=true)
	public List<Region> fetchProvinces() {
		TypedQuery<Region> q = entityManager.createQuery(
				"SELECT r FROM Region r WHERE r.belongsTo IS NULL", Region.class);		
		return q.getResultList();
	}

	@Override
	@Transactional(readOnly=true)
	public LinkedHashMap<Region, List<Region>> fetchRegions(String provinceCode) {
		LinkedHashMap<Region, List<Region>> result = new LinkedHashMap<Region, List<Region>>();
		
		TypedQuery<Region> q0 = entityManager.createQuery(
				"SELECT r FROM Region r WHERE r.belongsTo.dm=:provinceCode", Region.class);
		List<Region> cities = q0.setParameter("provinceCode", provinceCode).getResultList();
		for(Region city : cities) {
			TypedQuery<Region> q1 = entityManager.createQuery(
					"SELECT r FROM Region r WHERE r.belongsTo=:city", Region.class);
			List<Region> regions = q1.setParameter("city", city).getResultList();
			if(regions.size()>0) {
				result.put(city, regions);
			} else {
				List<Region> l = new LinkedList<Region>();
				l.add(city);
				result.put(city, l);
			}
				
		}
		return result;
	}

	
	
}
