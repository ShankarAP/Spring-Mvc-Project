package dao;

import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.EntityTransaction;
import javax.persistence.Persistence;

import org.springframework.stereotype.Component;

import dto.User_dto;


@Component
public class User_dao {

	EntityManagerFactory  entityManagerFactory=Persistence.createEntityManagerFactory("Shankar");
	EntityManager entityManager=entityManagerFactory.createEntityManager();
	EntityTransaction entityTransaction=entityManager.getTransaction();
	
	public void insert(User_dto dto) {
		entityTransaction.begin();
		entityManager.persist(dto);
		entityTransaction.commit();
		
		
	}
	
	
}
	