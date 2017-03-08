package main.java.ejb;

import java.util.List;

import javax.ejb.Stateless;
import javax.ejb.TransactionAttribute;
import javax.ejb.TransactionAttributeType;
import javax.ejb.TransactionManagement;
import javax.ejb.TransactionManagementType;
import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import javax.persistence.Query;

import main.java.entity.UserEntity;

@Stateless
@TransactionManagement(TransactionManagementType.CONTAINER)
@TransactionAttribute(TransactionAttributeType.REQUIRES_NEW)
public class UserEJB {
	@PersistenceContext(unitName = "PU")
	private EntityManager em;
	
	@SuppressWarnings("unchecked")
	public List<UserEntity> getUsers() {
		Query query = em.createQuery("SELECT u FROM UserEntity u");
		List<UserEntity> usersEntity =(List<UserEntity>) query.getResultList();
		return usersEntity;
	}
	
	public UserEntity getUser(int id) {
		UserEntity user = em.find(UserEntity.class, id);
			return user;
		
	}
	
	public UserEntity addUser(UserEntity user){
		user.setId(0);
		if(user.getNom()==null || user.getProfession()==null)
			return null;
		else {
			em.persist(user);
			em.refresh(user);
			return getUser(user.getId());
		}
	}
	public UserEntity updateUser(UserEntity user){
		em.merge(user);
		return getUser(user.getId()); 
	}
	
	public void deleteUsers(){
		em.createQuery("DELETE FROM UserEntity").executeUpdate();
	}
	
	public void deleteUser(int id){
		UserEntity userEntity = em.find(UserEntity.class, id);
		em.remove(userEntity);		
	}
	
}
