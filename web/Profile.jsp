<%-- 
    Document   : Profile
    Created on : Feb 20, 2024, 4:53:34 PM
    Author     : pts03
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link href="Assets/Styles/header.css" rel="stylesheet" type="text/css"/>
        <link href="Assets/Styles/footer.css" rel="stylesheet" type="text/css"/>
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0/css/all.min.css">
        <link rel="stylesheet" href="./Assets/Styles/Profile.css">
        <title>Profile</title>
        
    </head>

    <body id="body">

        <%@include file='./Components/Header.jsp' %>
        <div class="container">          
            <div class="profile">
                <div class="text-center">
                    <img src="./Assets/Image/User/default.jpg" alt="Customer Avatar"
                         class="img-fluid rounded-circle mb-3"
                         style="height: 100px; width: 100px; margin-left: 120px; margin-top: 20px;">
                    <div class="in4">

                        <h4>${sessionScope.account.fullName}</h4>
                    </div>
                </div>
                <div id="content">
                    <p>Tổng chi tiêu 2024 <strong id="money">0&#x111</strong> </p>
                </div>


                <div class="information">
                    <div class="hotline">
                        <strong>HOTLINE hỗ trợ:</strong>
                        <strong id="info">23456789 </strong>

                    </div>
                    <div class="email">
                        <strong>Email :</strong><strong id="info">galaxy@.com</strong>


                    </div>
                    <form action="Logout" method="GET"><button id="logout" type="submit" style=" border-radius: 5px; background-color: red">Logout</button></form>

                </div>
            </div>

            <div class="profile1">

            </div>
            <div class="prolife3">
                <form action="History" method="GET">
                <span class="header-profile">
                    <input type="hidden" name="id" value="${sessionScope.account.id}">
                    
                    <button type="submit" style="height: 30px; border: 2px solid whitesmoke;">Lịch sử Giao Dịch</button>
                    <p>Thông Tin Cá Nhân</p>
                    <p>Thông Báo</p>
                    <p>Quà Tặng</p>
                    <p>Chính Sách</p>

                </span>
                    </form>

                <div class="hozi">
                    <hr>
                </div>
                <form action="EditProfile" method="GET">
                    <div class="profile2">
                        <div class="form1">
                            <input type="hidden" name="id" value="${sessionScope.account.id}">
                            <div class="input-with-icon">

                                Họ và tên<br>

                                <input style="border-radius: 5px;
                                       border-radius: 5px;
                                       width: 270px;
                                       height: 30px;
                                       background-color: whitesmoke;" type="text" name="name" placeholder="Họ và Tên"><br>

                            </div>
                            <div class="input-with-icon">
                                Email :<br>

                                <input style="border-radius: 5px;  width: 270px; height: 40px; background-color: whitesmoke;"
                                       type="email" name="email" placeholder="Email"><br>

                            </div>

                        </div>




                        <div class="form2">

                            <div class="input-with-icon">

                                Số Điện Thoại<br>
                                <input style="border-radius: 5px;  width: 270px; height: 40px; background-color: whitesmoke; "
                                       type="tel" name="phonenumber" placeholder="Số Điện Thoại"><br>
                            </div>
                            <div class="input-with-icon">

                                Mật Khẩu<br>
                                <input style="border-radius: 5px;  width: 270px; height: 40px; background-color: whitesmoke;"
                                       type="password" name="password" placeholder="Mật Khẩu"><br>
                            </div>
                            <button id="submit" type="submit"> Cập Nhật</button>

                            </form>


                        </div>
                    </div>
            </div>
        </form>

    </div>
    <%@include file='./Components/Footer.jsp' %>