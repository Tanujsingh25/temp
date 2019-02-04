package com.cg.dto;
import java.util.Arrays;
import javax.validation.constraints.Pattern;

import org.hibernate.validator.constraints.Email;
import org.hibernate.validator.constraints.NotEmpty;
public class RegisterDto {
	@NotEmpty(message="User name mandatory")
    private String uname;
    private String password;
    private String confPass;
    @Pattern(regexp="[A-Z][a-z]*",message="First name is not Valid")
    private String fname;
    private String lname;
    @NotEmpty(message="Email is mandatory")
    @Email(message="email is mandatory")
    private String emailId;
    private String[] skillSet;
    private char gender;
    private String city;
    
    public RegisterDto(){}
    public String getUname() {
        return uname;
    }
    @Override
    public String toString() {
        return "RegisterDto [uname=" + uname + ", password=" + password + ", confPass=" + confPass + ", fname=" + fname
                + ", lname=" + lname + ", emailId=" + emailId + ", skillSet=" + Arrays.toString(skillSet) + ", gender="
                + gender + ", city=" + city + "]";
    }
    public void setUname(String uname) {
        this.uname = uname;
    }
    public String getPassword() {
        return password;
    }
    public void setPassword(String password) {
        this.password = password;
    }
    public String getConfPass() {
        return confPass;
    }
    public void setConfPass(String confPass) {
        this.confPass = confPass;
    }
    public String getFname() {
        return fname;
    }
    public void setFname(String fname) {
        this.fname = fname;
    }
    public String getLname() {
        return lname;
    }
    public void setLname(String lname) {
        this.lname = lname;
    }
    public String getEmailId() {
        return emailId;
    }
    public void setEmailId(String emailId) {
        this.emailId = emailId;
    }
    public String[] getSkillSet() {
        return skillSet;
    }
    public void setSkillSet(String[] skillSet) {
        this.skillSet = skillSet;
    }
    public char getGender() {
        return gender;
    }
    public void setGender(char gender) {
        this.gender = gender;
    }
    public String getCity() {
        return city;
    }
    public void setCity(String city) {
        this.city = city;
    }
}
