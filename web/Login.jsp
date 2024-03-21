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
        <title>Login</title>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
        <link href="https://fonts.googleapis.com/css?family=Lato:300,400,700&display=swap" rel="stylesheet">
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
        <link href="Assets/Styles/login.css" rel="stylesheet" type="text/css"/>

    </head>
    <body class="img js-fullheight" style="background-image: url(Assets/Image/Login/bg.jpg);">
        <section class="ftco-section">
            <div class="text-md-center ml-4">
                <a class="mr-md-z return-btn" href="home"> <i class="fa-solid fa-angle-left"></i>Trở về</a>
            </div>
            <div class="container">
                <div class="row justify-content-center">
                    <div class="col-md-6 col-lg-4">
                        <div class="login-wrap p-0">
                            <h3 class="mb-4 text-center font-weight-bold">Đã có tài khoản?</h3>
                            <form action="login" method="post" class="signin-form">
                                <div class="form-group">
                                    <input type="text" class="form-control" name="emailOrPhone" value="${cookie.cuser.value}" placeholder="Nhập email..." required>
                                </div>
                                <div class="form-group">
                                    <input id="password-field" type="password" class="form-control" value="${cookie.cpass.value}" name="password" placeholder="Nhập mật khẩu..." required>
                                    <span toggle="#password-field" class="fa fa-fw fa-eye field-icon toggle-password"></span>
                                </div>
                                <p style="color: white">${requestScope.error}</p>
                                <div class="form-group">
                                    <button type="submit" class="form-control btn btn-primary submit px-3">Đăng nhập</button>
                                </div>
                                <div class="form-group d-md-flex">
                                    <div class="w-50">
                                        <label class="checkbox-wrap checkbox-primary">Ghi nhớ mật khẩu
                                            <input type="checkbox" name="remember" ${cookie.crem!=null?'checked':''}>
                                            <span class="checkmark"></span>
                                        </label>
                                    </div>
                                    <div class="w-50 text-md-right">
                                        <a href="forgotPassword" style="color: #fff">Quên mật khẩu?</a>
                                    </div>
                                </div>
                            </form>
                            <p class="w-100 text-center">&mdash; Chưa có tài khoản? &mdash;</p>
                            <div class="social d-flex text-center">
                                <a href="register" class="px-2 py-2 mr-md-1 rounded"><span class="ion-logo-facebook mr-2"></span>Đăng ký</a>
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

