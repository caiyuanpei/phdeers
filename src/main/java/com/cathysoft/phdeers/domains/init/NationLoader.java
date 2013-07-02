package com.cathysoft.phdeers.domains.init;

import java.io.BufferedReader;
import java.io.InputStreamReader;

import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.Persistence;

import org.springframework.core.io.ClassPathResource;

import com.cathysoft.phdeers.domains.Nation;

public class NationLoader {

	/**
	 * @param args
	 */
	public static void main(String[] args) throws Exception{
		EntityManagerFactory emf = Persistence.createEntityManagerFactory("phdeers.local");
		EntityManager em = emf.createEntityManager();
		em.getTransaction().begin();
		
		BufferedReader br = new BufferedReader(new InputStreamReader(new ClassPathResource("datas/nations.txt").getInputStream()));
		String line = null;
		while((line=br.readLine())!=null) {
			if(line.trim().length()==0) continue;
			
			String[] tokens = line.split("\t");
			String dm = tokens[0].trim();
			String mc = tokens[1].trim();
			
			System.out.printf("dm: %s, mc: %s\n", dm, mc);
			
			em.persist(new Nation(dm, mc));
		}
		
		em.getTransaction().commit();
		em.close();
		emf.close();
	}

}
