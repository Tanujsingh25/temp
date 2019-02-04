package com.cg.service;
import com.cg.dto.Login;
public interface ILoginService {
	public boolean isUserExist(String userName);
	public Login validateUser(Login login);
}
