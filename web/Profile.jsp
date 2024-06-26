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
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.1/css/all.min.css">
        <link rel="stylesheet" href="./Assets/Styles/Profile.css">
        <title>Profile</title>

    </head>

    <body id="body">
        <%@include file='./Components/Header.jsp' %>
        <div class="container">          
            <div class="profile">
                <div class="text-center">
                    <img src="./Assets/Image/Payment_icon/logo.png" alt="Customer Avatar"
                         class="img-fluid rounded-circle mb-3" height="100px" width="100px" " >

                </div>
                <div class="in4">
                    <img src="https://cdn.galaxycine.vn/media/2020/5/15/s_1589511977688.png" alt="Avatar" style="margin-bottom: -35px;
                         display: flex;
                         width: 32px;
                         margin-left: 77px; ">
                    <h4>${sessionScope.account.fullName}</h4>
                    <div class="gift-container">
                        <img src="https://www.galaxycine.vn/_next/static/media/icon-gift.190935e4.png" alt="Gift">
                        <span>0 Stars  </span>
                    </div>
                </div>



                <div class="information">
                    <div class="hotline">
                        <strong>HOTLINE hỗ trợ:</strong>
                        <strong id="info">23456789 </strong>
                        <div class="fa-solid fa-chevron-right" style=" padding-left: 138px; cursor: pointer"></div> 
                    </div>
                    <div class="email">
                        <strong>Email:</strong><strong id="info">galaxy@.com</strong>
                        <div class="fa-solid fa-chevron-right" style=" padding-left: 202px; cursor: pointer"></div> 
                    </div>
                    <div class="Question">
                        <strong>Câu hỏi thường gặp </strong>
                        <div class="fa-solid fa-chevron-right" style=" padding-left: 200px; cursor: pointer" ></div> 
                    </div>



                    <a href="Logout">Đăng Xuất</a>
                </div>
            </div>

            <div class="profile1">

            </div>
            <div class="prolife3">
                <span class="header-profile">
                    <input type="hidden" name="id" value="${sessionScope.account.id}">


                    <a href="History?id=${sessionScope.account.id}" style="height: 30px; border: 2px solid whitesmoke;">Lịch sử Giao Dịch</a>
                    <a href="ProfileServlet" style="height: 30px; border: 2px solid whitesmoke;">Thông Tin Cá Nhân</a>
                </span>

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
                                       height: 40px;
                                       background-color: whitesmoke;" value="${sessionScope.account.fullName}" type="text" name="name" placeholder="Họ và Tên"><br>
                            </div>
                            <div class="input-with-icon">Email <br>
                                <input readonly="" style="border-radius: 5px;  width: 270px; height: 40px; background-color: whitesmoke;"
                                       type="email" name="email" value="${sessionScope.account.email}"><br>
                            </div>
                        </div>
                        <div class="form2">

                            <div class="input-with-icon">

                                Số điện thoại<br>
                                <input style="border-radius: 5px;  width: 270px; height: 40px; background-color: whitesmoke; "
                                       type="tel" name="phonenumber" value="${sessionScope.account.phone}"><br>
                            </div>
                            <div class="input-with-icon">

                                Mật khẩu<br>
                                <input style="border-radius: 5px;  width: 270px; height: 40px; background-color: whitesmoke;"
                                       type="password" name="password" placeholder="Mật khẩu"><br>
                                <p style="color: red;">${error}</p>
                            </div>
                            <button id="submit" type="submit"> Cập Nhật</button>

                            </form>


                        </div>
                    </div>
            </div>
        </form>

    </div>
    <%@include file='./Components/Footer.jsp' %>