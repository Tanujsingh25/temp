<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Registration</title>
<style type="text/css">
/*Fonts*/
@import 'https://fonts.googleapis.com/css?family=Open+Sans';

@import 'https://fonts.googleapis.com/css?family=Galada';

::selection {
	background: #ffb7b7; /* WebKit/Blink Browsers */
}

::-moz-selection {
	background: #ffb7b7; /* Gecko Browsers */
}

* {
	-moz-box-sizing: border-box;
	-webkit-box-sizing: border-box;
	box-sizing: border-box;
}

:focus {
	outline: none
}
/*Reset*/
body, div, dl, dt, dd, ul, ol, li, h1, h2, h3, h4, h5, h6, pre, form,
	fieldset, input, textarea, p, blockquote, th, td {
	padding: 0;
	margin: 0;
}

body, input {
	font-family: 'Open sans', sans-serif;
	font-size: 18px;
	color: #4c4c4c;
}

body {
	background-color: #292931;
	background:
		url(https://i0.imgpile.com/2016/09/14/7861aab59aa07c9499278339f41522c3.jpg)
		no-repeat center center fixed;
	-webkit-background-size: cover;
	-moz-background-size: cover;
	-o-background-size: cover;
	background-size: cover;
}

form {
	margin: 10px 35px;
}

input {
	border: none;
}

a {
	text-decoration: none;
	color: rgb(255, 255, 255);
}

a:hover {
	color: rgba(255, 152, 0, 0.79);
	text-decoration: underline;
}

input[type=text], input[type=password] {
	width: 200px;
	height: 38px;
	border: 1px solid #cbc9c9;
	padding-left: 5px;
	margin-left: -5px;
	margin-top: 3px;
	border-radius: 0px 3px 3px 0px;
	-webkit-border-radius: 0px 3px 3px 0px;
	-moz-border-radius: 0px 3px 3px 0px;
}

input[type=text], input[type=emailId] {
	width: 200px;
	height: 38px;
	border: 1px solid #cbc9c9;
	padding-left: 5px;
	margin-left: -5px;
	margin-top: 3px;
	border-radius: 0px 3px 3px 0px;
	-webkit-border-radius: 0px 3px 3px 0px;
	-moz-border-radius: 0px 3px 3px 0px;
}

input[type=submit] {
	width: 237px;
	height: 40px;
	margin-left: 17px;
	border-radius: 3px;
	background-color: #ae6a6a;
	color: #f8f8f8;
	border-radius: 2px 2px 12px 12px;
	-webkit-border-radius: 2px 2px 12px 12px;
	-moz-border-radius: 2px 2px 12px 12px;
}

input[type=submit]:hover {
	background-color: #607d8b;
	color: #f8f8f8;
	cursor: pointer;
}

#icon {
	background-color: #F4F4F4;
	color: #625864;
	display: inline-block;
	font-size: 14px;
	padding-top: 10px;
	padding-bottom: 7px;
	width: 40px;
	margin-left: 15px;
	margin-bottom: 20px;
	text-align: center;
	border-top: solid 1px #cbc9c9;
	border-bottom: solid 1px #cbc9c9;
	border-left: solid 1px #cbc9c9;
	border-radius: 3px 0 0 3px;
	-webkit-border-radius: 3px 0 0 3px;
	-moz-border-radius: 3px 0 0 3px;
}

.wrapper {
	margin: 50px auto;
	width: 343px;
	height: 280px;
	border-radius: 5px;
	-moz-border-radius: 5px;
	-webkit-border-radius: 5px;
}

.wrapper h1 {
	font-family: 'Galada', cursive;
	color: #f4f4f4;
	letter-spacing: 8px;
	text-align: center;
	padding-top: 5px;
	padding-bottom: 5px;
}

.wrapper hr {
	opacity: 0.2;
}

.crtacc {
	margin-left: 75px;
}

body {
	background-image: url("nature.jpg");
}

.no-background {
	background-image: url("nature.jpg");
}
</style>
</head>

<body>

	<form:form action="InsertUser.obj" method="post" modelAttribute="reg"
		class="no-background">
		<div class="container register"></div>
		<div class="row">

			<div class="col-md-9 register-right"></div>
			<ul class="nav nav-tabs nav-justified" id="myTab">


			</ul>
			<div class="tab-content" id="myTabContent">

				<h3 class="register-heading">Apply as a Employee</h3>
				<br>
				<br>
				<div class="row register-form">
					<div class="col-md-6">
						<div class="form-group">
							<span class="fa-stack fa-lg"> <i
								class="fa fa-circle fa-stack-2x"></i> <i
								class="fa fa-lock fa-stack-1x"></i>
							</span>
							<form:input path="uname" type="text" class="form-control"
								placeholder="Uname *" value="" />
								<form:errors path="uname"></form:errors>
							<br>
							<br>
						</div>
						<div class="form-group">
							<form:input path="fname" align="center" type="text"
								class="form-control" placeholder="First Name *" value="" />
								<form:errors path="fname"></form:errors>
							<br>
							<br>
						</div>
						<div class="form-group">
							<form:input path="lname" type="text" class="form-control"
								placeholder="Last Name *" value="" />
							<br>
							<br>
						</div>
						<div class="form-group">
							<form:input path="password" type="password" class="form-control"
								placeholder="Password *" value="" />
							<br>
							<br>
						</div>
						<div class="form-group">
							<form:input path="confPass" type="password" class="form-control"
								placeholder="Confirm Password *" value="" />
							<br>
							<br>

						</div>
						:::Gender:::<br>
						<br>
						<form:radiobutton path="gender" value="M" />
						Male<br><br>
						<form:radiobutton path="gender" value="F" />
						Female
						<br>
						<br>
					</div>
					<div class="col-md-6">
						<div class="form-group">
							Email<br>
							<br>
							<form:input type="email" path="emailId" class="form-control"
								placeholder="Your Email *" value="" />
								<form:errors path="emailId"></form:errors>
							<br>
							<br>
						</div>
						<div class="form-group">
							SkillSets
							<form:checkboxes items="${sList}" path="skillSet" />
							<br>
							<br>
						</div>
						City:
						<form:select path="city">
							<form:option value="Select Your City" />
							<form:options items="${cList}" />
						</form:select><br><br><br>
						 <input type="submit" class="btnRegister"
							value="Register" />
					</div>
				</div>
			</div>
		</div>
	</form:form>
</body>
</html>

