<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<link href="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
<script src="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"></script>
<script src="//code.jquery.com/jquery-1.11.1.min.js"></script>
<!------ Include the above in your HEAD tag ---------->
<link href="loginCss.css" rel="stylesheet" > 
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>LogIn Page</title>
</head>
<body>
<h3> Welcome :${compNameObj} </h3>
<hr color="red" size="5"/>
<div class="sidenav">
         <div class="login-main-text">
            <h1>Application<br> Login Page</h1><br><br>
            <p><marquee><h4>Login here.</h4></marquee></blink></p>
         </div>
      </div>
      <div class="main">
         <div class="col-md-6 col-sm-12">
            <div class="login-form">
          
               <form:form action="ValidateUser.obj" modelAttribute="log" method="post">
                  <div class="form-group">
                     <label>User Name</label>
                     <form:input path="userName" type ="text" class="form-control" placeholder="User Name"/>
                     <form:errors path="userName"/>
                  </div>
                  <div class="form-group">
                     <label>Password</label>
                     <form:input path="passWord" type ="password" class="form-control" placeholder="Password"/>
                      <form:errors path="passWord"/>
                  </div>
                 <br>
 &nbsp&nbsp&nbsp
                    <button type="submit" class="button">LogIn</button>
           &nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp       
<button type="submit" class="button">Register</button>
              </form:form>
            </div>
         </div>
      </div>
</body>
</html>

