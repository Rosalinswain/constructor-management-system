package com.org.dao;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.EntityTransaction;
import javax.persistence.Persistence;
import javax.persistence.Query;

import com.org.dto.User;

public class UserDao {

	static EntityManagerFactory emf = Persistence.createEntityManagerFactory("karthik");

	public boolean registerUser(User u) {

		EntityManager em = emf.createEntityManager();
		EntityTransaction et = em.getTransaction();

		et.begin();
		em.persist(u);
		et.commit();

		return true;
	}

	public User loginUser(String email, String password) {

		EntityManager em = emf.createEntityManager();
		String jpql = "select u from User u where u.email=?1 and u.password=?2";

		Query query = em.createQuery(jpql);
		query.setParameter(1, email);
		query.setParameter(2, password);

		List<User> list = query.getResultList();

		return !list.isEmpty() ? list.get(0) : null;
	}

	public User fetchUserById(int id) {
		EntityManager em = emf.createEntityManager();
		User user = em.find(User.class, id);
		return user;
	}

}
