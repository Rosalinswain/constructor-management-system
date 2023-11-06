package com.org.dao;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.EntityTransaction;
import javax.persistence.Persistence;
import javax.persistence.Query;

import com.org.dto.Properties;
import com.org.dto.User;

public class PropertiesDao {
	static EntityManagerFactory emf = Persistence.createEntityManagerFactory("karthik");

	public void addProperty(Properties properties) {
		EntityManager em = emf.createEntityManager();
		EntityTransaction et = em.getTransaction();

		et.begin();
		em.merge(properties);
		et.commit();
	}

	public List<Properties> fetchAllProperties(User user) {
		EntityManager em = emf.createEntityManager();

		Query query = em.createQuery("select p from Properties p where p.user=?1");
		query.setParameter(1, user);

		List<Properties> list = query.getResultList();

		return list;

	}
	public List<Properties> fetchAllProperties() {
		EntityManager em = emf.createEntityManager();

		Query query = em.createQuery("select p from Properties p ");

		List<Properties> list = query.getResultList();

		return list;

	}

	public Properties fetchPropertyById(int id) {
		EntityManager em = emf.createEntityManager();

		Properties properties = em.find(Properties.class, id);

		return properties;
	}

	public void removePropertyById(int id) {
		EntityManager em = emf.createEntityManager();
		EntityTransaction et = em.getTransaction();

		Properties properties = em.find(Properties.class, id);
		et.begin();
		em.remove(properties);
		et.commit();

	}

}
