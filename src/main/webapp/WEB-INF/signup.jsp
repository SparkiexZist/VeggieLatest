<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
         pageEncoding="ISO-8859-1" isELIgnored="false"%>
<!DOCTYPE html>
<html>
<head>
  <meta charset="ISO-8859-1">
  <link href="https://fonts.googleapis.com/css?family=Ubuntu" rel="stylesheet">
  <meta name="viewport" content="width=device-width, initial-scale=1" />
  <title>Login Page</title>

  <style>
    body {
      margin: 0;
      padding: 0;
      background-color: #17a2b8;
      height: 100vh;
    }
    #login .container #login-row #login-column #login-box {
      margin-top: 120px;
      max-width: 600px;
      height: 600px;
      border: 1px solid #9C9C9C;
      background-color: #EAEAEA;
    }
    #login .container #login-row #login-column #login-box #login-form {
      padding: 20px;
    }
    #login .container #login-row #login-column #login-box #login-form #register-link {
      margin-top: -85px;
    }
  </style>
</head>
<body>
<%@include file="fragments/header.jsp" %>
<div id="login">
  <div class="container">
    <div id="login-row" class="row justify-content-center align-items-center">
      <div id="login-column" class="col-md-6">
        <div id="login-box" class="col-md-12">
          <form id="login-form" class="form" action="addUser" method="post">
            <h3 class="text-center text-info">Register</h3>
            <div class="form-group">
              <label for="fname" class="text-info">First name:</label><br>
              <input type="text" name="user_fname" id="fname" class="form-control">
            </div>
            <div class="form-group">
              <label for="lname" class="text-info">Last name:</label><br>
              <input type="text" name="user_lname" id="lname" class="form-control">
            </div>
            <div class="form-group">
              <label for="email" class="text-info">Email:</label><br>
              <input type="text" name="user_email" id="email" class="form-control">
            </div>
            <div class="form-group">
              <label for="pass" class="text-info">Password:</label><br>
              <input type="password" name="user_pass" id="pass" class="form-control">
            </div>
            <div class="form-group">
              <label for="mobile" class="text-info">Mobile:</label><br>
              <input type="text" name="user_mobile" id="mobile" class="form-control">
            </div>
            <div class="form-group">
              <label for="remember-me" class="text-info"><span>Remember me</span> <span><input id="remember-me" name="remember-me" type="checkbox"></span></label><br>
              <input type="submit" name="submit" class="btn btn-info btn-md" value="submit">
            </div>
            <div id="register-link" class="text-right">
              <a href="signup" class="text-info">Register here</a>
            </div>
          </form>
        </div>
      </div>
    </div>
  </div>
</div>
</body>
</html>
