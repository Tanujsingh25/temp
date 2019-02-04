package com.cg.ctrl;

import java.util.ArrayList;

import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.cg.dto.Login;
import com.cg.dto.RegisterDto;
import com.cg.service.ILoginService;
import com.sun.javafx.sg.prism.NGShape.Mode;
import com.sun.org.apache.bcel.internal.generic.DADD;

@Controller
public class LoginController {
	ArrayList<String> cityList = null;
	ArrayList<String> skillSet= null;
    @Autowired
    ILoginService logservice=null;
    ILoginService loginService=null;
    //***********************Getters and Setters***************************
        public ILoginService getLogservice() {
            return logservice;
        }
        public ILoginService getLoginService() {
            return loginService;
        }
        public void setLoginService(ILoginService loginService) {
            this.loginService = loginService;
        }
        public void setLogservice(ILoginService logservice) {
            this.logservice = logservice;
        }
    @RequestMapping(value="/showLoginPage",method=RequestMethod.GET)
    public String displayLoginPage(Model obj) {
        Login lg = new Login();
        lg.setUserName("Enter your Username !!");
        obj.addAttribute("log", lg);
        obj.addAttribute("compNameObj", "Capgemini");
        return "Login";
    }
    /*****************************Validate User Function******************/
    @RequestMapping(value="/ValidateUser" ,method=RequestMethod.POST)
    public String validateUserDetails(@ModelAttribute(value="log") @Valid Login lg,BindingResult result, Model model)  {
        if(result.hasErrors())
            return "Login";     
        if(!logservice.isUserExist(lg.getUserName()))
        	return "redirect:/ShowRegistrationPage.obj";
        Login user = logservice.validateUser(lg);
        if(user!=null) {
            model.addAttribute("uname",lg.getUserName());
            return "Success";
        }
            model.addAttribute("uname",lg.getUserName());
            return "Failure";
    }
    
    // ***********************Registration Function***********************
    
    @RequestMapping(value="/ShowRegistrationPage")
    public String displayRegistrationPage(Model model) {
         cityList = new ArrayList<>();
         skillSet = new ArrayList<>();
        cityList.add("Pune");
        cityList.add("Banglore");
        cityList.add("Hyderabad");
        cityList.add("Mumbai");
        cityList.add("Delhi");
        cityList.add("Melbourne");
        cityList.add("New York");
        cityList.add("Hong Kong");
        cityList.add("Cape Town");
        
        skillSet.add("HTML");
        skillSet.add("VB .Net");
        skillSet.add("Core Java");
        skillSet.add("Scala");
        skillSet.add("python");
        skillSet.add("C");
        skillSet.add("C++");
        skillSet.add("Swift");
        skillSet.add("MySQL");
        skillSet.add("Oracle");
        
        RegisterDto rd = new RegisterDto();
        model.addAttribute("reg", rd);
        model.addAttribute("cList",cityList);
        model.addAttribute("sList",skillSet);
        return "Register";
    }
    /*************** Insert Details********************/
    @RequestMapping(value="/InsertUser" , method=RequestMethod.POST)
    public String addUserDetails(@ModelAttribute(value="reg") @Valid RegisterDto rd,BindingResult result,
            Model model) {
    	if(result.hasErrors()) {
    		model.addAttribute("cList",cityList);
    		model.addAttribute("sList",skillSet);
    		return "Register";
    	}
    	
    	model.addAttribute("RegObj", rd);
        return "ListAllUser";
    }
}