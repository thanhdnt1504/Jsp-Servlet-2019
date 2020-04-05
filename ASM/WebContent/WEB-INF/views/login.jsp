<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta content="width=device-width, initial-scale=1" name="viewport">
    <meta name="description" content="Responsive Admin Template">
    <meta name="author" content="SmartUniversity">
    <title>Login |</title>
    <!-- google font -->
    <link href="<c:url value="https://fonts.googleapis.com/css?family=Poppins:300,400,500,600,700"/>"rel="stylesheet" type="text/css">
	<!-- icons -->
    <link href="<c:url value="/fonts/font-awesome/css/font-awesome.min.css"/> "rel="stylesheet" type="text/css">
	<link href="<c:url value="/fonts/material-design-icons/material-icon.css"/> "rel="stylesheet" type="text/css">
    <!-- bootstrap -->
	<link href="<c:url value="/assets/plugins/bootstrap/css/bootstrap.min.css"/> "rel="stylesheet" type="text/css">
    <!-- style -->
    <link rel="stylesheet" href="<c:url value="/assets/css/pages/extra_pages.css"/>">
	<!-- favicon -->
    <link rel="shortcut icon" href="<c:url value="/assets/img/favicon.ico"/>"> 
</head>
<body>
    <div class="form-title">
        <h1>Login Form</h1>
    </div>
    <!-- Login Form-->
    <div class="login-form text-center">
        <div class="toggle"><i class="fa fa-user-plus"></i>
        </div>
        <div class="form formLogin">
            <h2>Login to your account</h2>
                <p style='color: red; font-weight: bold'>${message}</p>
            <form action="login.htm" method="POST">
                <input type="text" placeholder="Username" name="username" value="${DATA}">
                <input type="password" placeholder="Password" name="password">
                <div class="remember text-left">
                    <div class="checkbox checkbox-primary">
                        <input id="checkbox2" type="checkbox">
                        <label for="checkbox2">
                            Remember me
                        </label>
                    </div>
                </div>
                <button>Login</button>
                <div class="forgetPassword"><a href="javascript:void(0)">Forgot your password?</a>
                </div>
            </form>
        </div>
        <div class="form formRegister">
            <h2>Create an account</h2>
            <form>
                <input type="text" placeholder="Username">
                <input type="password" placeholder="Password">
                <input type="email" placeholder="Email Address">
                <input type="text" placeholder="Full Name">
                <input type="tel" placeholder="Phone Number">
                <button>Register</button>
            </form>
        </div>
        <div class="form formReset">
            <h2>Reset your password?</h2>
            <form>
                <input type="email" placeholder="Email Address">
                <button>Send Verification Email</button>
            </form>
        </div>
    </div>
    <!-- start js include path -->
    <script src="<c:url value="/assets/plugins/jquery/jquery.min.js"/>"></script>
    <script src="<c:url value="/assets/js/pages/extra_pages/pages.js"/>"></script>
    <!-- end js include path -->
</body>
</html>