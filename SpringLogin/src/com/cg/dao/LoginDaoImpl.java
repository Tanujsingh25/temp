package com.cg.dao;
import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import javax.transaction.Transactional;

import org.springframework.stereotype.Repository;

import com.cg.dto.Login;
@Repository("dao")
@Transactional
public class LoginDaoImpl implements ILoginDao{
	@PersistenceContext
	EntityManager entityManager = null;
	@Override
	public boolean isUserExist(String userName) {
		if(entityManager.find(Login.class, userName)!=null)
			return true;
		return false;
	}
	@Override
	public Login validateUser(Login login) {
		return entityManager.find(Login.class, login.getUserName());
	}
}
