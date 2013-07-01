package com.cathysoft.phdeers.service;

import java.util.LinkedHashMap;
import java.util.List;

import com.cathysoft.phdeers.domains.Region;

public interface RegionService {

	public List<Region> fetchProvinces();
	
	public LinkedHashMap<Region, List<Region>> fetchRegions(String provinceCode);
}
