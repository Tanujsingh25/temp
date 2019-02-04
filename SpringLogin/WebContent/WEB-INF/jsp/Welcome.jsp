<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Welcome</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>
</head>

<body bgcolor="skyblue">
	<div class="container">
		<h2>Welcome : </h2>
		<button type="button" class="btn btn-info btn-lg" data-toggle="modal" data-target="#myModal">Click here to login </button>
		<div class="modal fade" id="myModal" role="dialog">
    <div class="modal-dialog">
      <div class="modal-content">
        <div class="modal-header" style="background-color: orange">
<!--           <button type="button" class="close" data-dismiss="modal">&times;</button> -->
          <h4 class="modal-title">Login</h4>
        </div>
        <div class="modal-body" >
          	<label>Login Id :&nbsp;&nbsp;&nbsp;</label><input type="text"  placeholder="Enter Login Id" name="User Id" /><br><br>
          	<label>Password :</label><input type="text"  placeholder="Enter password" name="pass" />
        </div>
        <div class="modal-footer" style="background-color: green">
          <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
        </div>
      </div>
    </div>
  </div>
  
</div>
	</body>
</html>