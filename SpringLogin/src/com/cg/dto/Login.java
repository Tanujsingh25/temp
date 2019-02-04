package com.cg.dto;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;
import javax.validation.constraints.Size;

import org.hibernate.validator.constraints.NotEmpty;
@Entity
@Table(name="cg_users")
public class Login {
	@Id
	@Column(name="user_name",length=20)
    private String userName;
	@Column(name="password",length=20)
    private String passWord;
    public Login() {}
    @NotEmpty(message="Username is required")
    @Size(min=5,message="min 5 characters are required")
    public String getUserName() {
        return userName;
    }
    
    public void setUserName(String userName) {
        this.userName = userName;
    }
    
    
    @NotEmpty(message="Password is required")
    public String getPassWord() {
        return passWord;
    }
    
    public void setPassWord(String passWord) {
        this.passWord = passWord;
    }

    
    
}
