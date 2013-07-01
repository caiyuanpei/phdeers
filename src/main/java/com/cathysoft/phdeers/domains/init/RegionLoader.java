package com.cathysoft.phdeers.domains.init;

import java.io.BufferedReader;
import java.io.InputStreamReader;

import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.Persistence;

import org.springframework.core.io.ClassPathResource;

import com.cathysoft.phdeers.domains.Region;

public class RegionLoader {

	/**
	 * @param args
	 */
	public static void main(String[] args) throws Exception{
		EntityManagerFactory emf = Persistence.createEntityManagerFactory("phdeers.local");
		EntityManager em = emf.createEntityManager();
		em.getTransaction().begin();
		
		BufferedReader br = new BufferedReader(new InputStreamReader(new ClassPathResource("datas/region_of_china.txt").getInputStream()));
		String line = null;
		while((line=br.readLine())!=null) {
			if(line.trim().length()==0) continue;
			
			String[] tokens = line.split("\t");
			String dm = tokens[0].trim();
			String mc = tokens[1].trim();
			
			if(dm.endsWith("0000")) {
				em.persist(new Region(null, dm, mc));
			}else if(dm.endsWith("00")) {
				Region r = em.createNamedQuery("byCode", Region.class).setParameter("dm", dm.substring(0, 2)+"0000").getSingleResult();
				em.persist(new Region(r, dm, mc));
			}else {
				Region r = em.createNamedQuery("byCode", Region.class).setParameter("dm", dm.substring(0, 4)+"00").getSingleResult();
				em.persist(new Region(r, dm, mc));
			}
			
		}
		
		
		em.getTransaction().commit();
		em.close();
		emf.close();
	}

}
