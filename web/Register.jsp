<%-- 
    Document   : Login
    Created on : Feb 24, 2024, 6:04:58 PM
    Author     : ADMIN
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!doctype html>
<html lang="en">
    <head>
        <title>Register</title>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

        <link href="https://fonts.googleapis.com/css?family=Lato:300,400,700&display=swap" rel="stylesheet">

        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">

        <link href="Assets/Styles/login.css" rel="stylesheet" type="text/css"/>

    </head>
    <body class="img js-fullheight" style="background-image: url(Assets/Image/Login/bg.jpg);">
        <section class="ftco-section">
            <div class="text-md-center ml-4">
                <a class="mr-md-z return-btn" href="HomePage.jsp"> <i class="fa-solid fa-angle-left"></i>   Return home</a>
            </div>
            <div class="container">
                <div class="row justify-content-center">
                    <div class="col-md-6 col-lg-4">
                        <div class="login-wrap p-0">
                            <h3 class="mb-4 text-center">Create an account</h3>
                            <form action="register" method="post" class="signin-form">
                                <div class="form-group">
                                    <input type="text" class="form-control" name="fullName" placeholder="Full name" value="${requestScope.fullName}" required>
                                </div>
                                <div class="form-group">
                                    <input type="email" class="form-control" name="email" placeholder="Email" value="${requestScope.email}" required>
                                </div>
                                <div class="form-group">
                                    <input type="tel" class="form-control" name="phone" placeholder="Phone number" value="${requestScope.phone}" required>
                                </div>
                                <div class="form-group">
                                    <input id="password" type="password" name="password" class="form-control" placeholder="Password" required>
                                </div>
                                <div class="form-group">
                                    <input id="confirm-password" name="rePassword" type="password" class="form-control" placeholder="Confirm password" required>
                                    <span toggle="#confirm-password" class="fa fa-fw fa-eye field-icon toggle-password"></span>
                                </div>
                                <p style="color: white">${requestScope.error}</p>
                                <div class="form-group">
                                    <button type="submit" class="form-control btn btn-primary submit px-3">Sign up</button>
                                </div>
                            </form>
                            <p class="w-100 text-center">&mdash; Already have an account? &mdash;</p>
                            <div class="social d-flex text-center">
                                <a href="login" class="px-2 py-2 mr-md-1 rounded"><span class="ion-logo-facebook mr-2"></span> Sign in</a>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </section>

        <script src="Assets/JS/LoginScript/bootstrap.min.js" type="text/javascript"></script>
        <script src="Assets/JS/LoginScript/jquery.min.js" type="text/javascript"></script>
        <script src="Assets/JS/LoginScript/login.js" type="text/javascript"></script>
        <script src="Assets/JS/LoginScript/popper.js" type="text/javascript"></script>
        <script src="https://kit.fontawesome.com/26eb80e241.js" crossorigin="anonymous"></script>
    </body>
</html>

