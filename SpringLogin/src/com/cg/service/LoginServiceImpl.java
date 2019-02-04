package com.cg.service;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.cg.dao.ILoginDao;
import com.cg.dto.Login;
@Service("loginService")
public class LoginServiceImpl implements ILoginService{
	@Autowired()
	ILoginDao dao = null;
	public ILoginDao getDao() {
		return dao;
	}
	public void setDao(ILoginDao dao) {
		this.dao = dao;
	}
	@Override
	public boolean isUserExist(String user) {
		return dao.isUserExist(user);
	}
	@Override
	public Login validateUser(Login log) {
		Login dbUser = dao.validateUser(log);
		if(log.getUserName().equalsIgnoreCase(dbUser.getUserName()) && log.getPassWord().equalsIgnoreCase(dbUser.getPassWord()))
			return log;
		return null;
	}
}
