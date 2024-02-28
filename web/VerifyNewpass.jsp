<%-- 
    Document   : Verify
    Created on : Feb 25, 2024, 8:23:02 PM
    Author     : ADMIN
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Verify your email</title>
        <link href="Assets/Styles/verify.css" rel="stylesheet" type="text/css"/>
        <link rel='stylesheet' href='https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css'>
    </head>
    <body class="container-fluid bg-body-tertiary d-block">
        <div class="row justify-content-center">
            <div class="col-12 col-md-6 col-lg-4" style="min-width: 500px;">
                <div class="card bg-white mb-5 mt-5 border-0" style="box-shadow: 0 12px 15px rgba(0, 0, 0, 0.02);">
                    <div class="card-body p-5 text-center">
                        <h4>Verify</h4>
                        <p>Your code was sent to you via email</p>

                        <form id="verificationForm" action="verifyNewpass" method="post">
                            <div class="otp-field mb-4">
                                <input type="number" name="digit1" id="digit1" />
                                <input type="number" name="digit2" id="digit2" disabled />
                                <input type="number" name="digit3" id="digit3" disabled />
                                <input type="number" name="digit4" id="digit4" disabled />
                                <input type="number" name="digit5" id="digit5" disabled />
                                <input type="number" name="digit6" id="digit6" disabled />
                            </div>
                            <p style="color: white">${requestScope.error}</p>
                            <button type="button" class="btn btn-primary mb-3" onclick="submitForm()">
                                Verify
                            </button>
                        </form>

                        <p class="resend text-muted mb-0">
                            Didn't receive code? <a href="reVerify">Request again</a>
                        </p>
                    </div>
                </div>
            </div>
        </div>
        <script src="Assets/JS/LoginScript/verify.js" type="text/javascript"></script>
    </body>
</html>
