<%-- 
    Document   : paymentSuccess
    Created on : Mar 11, 2024, 7:46:35 AM
    Author     : ADMIN
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
    <head>
        <link href="https://fonts.googleapis.com/css?family=Nunito+Sans:400,400i,700,900&display=swap" rel="stylesheet">
    </head>
    <style>
        body {
            text-align: center;
            padding: 40px 0;
            background: #EBF0F5;
        }
        h1 {
            color: #88B04B;
            font-family: "Nunito Sans", "Helvetica Neue", sans-serif;
            font-weight: 900;
            font-size: 40px;
            margin-bottom: 10px;
        }
        p {
            color: #404F5E;
            font-family: "Nunito Sans", "Helvetica Neue", sans-serif;
            font-size:20px;
            margin: 0;
        }
        i {
            color: #9ABC66;
            font-size: 100px;
            line-height: 200px;
            margin-left:-15px;
        }
        .card {
            background: white;
            padding: 60px;
            border-radius: 4px;
            box-shadow: 0 2px 3px #C8D0D8;
            display: inline-block;
            margin: 0 auto;
        }
    </style>
    <body>
        <div class="card">
            <div style="border-radius:200px; height:200px; width:200px; background: #F8FAF5; margin:0 auto;">
                <i class="checkmark">✓</i>
            </div>
            <h1>Thành công</h1> 
            <p>${requestScope.mess}<br/>Trở về trang chủ sau 5 giây</p>
        </div>

        <script type="text/javascript">
            // Get the delay time from the request attribute
            var delayTime = <%= request.getAttribute("redirectDelay") %>;

            // Function to redirect to the home page after the specified delay
            function redirectToHome() {
                setTimeout(function () {
                    window.location.href = "home"; // Replace "home.jsp" with your actual home page URL
                }, delayTime);
            }

            // Call the function on page load
            window.onload = redirectToHome;
        </script>
    </body>
</html>
