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
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0/css/all.min.css">
    <link rel="stylesheet" href="./Assets/Styles/Profile.css">
    <title>Profile</title>
</head>

<body id="body">

    <div class="container">

        <div class="profile">
            <div class="text-center">
                <img src="./Assets/Image/User/z5093594224219_87654397e30fec7c89275c9bb7e54bb1.jpg" alt="Customer Avatar"
                    class="img-fluid rounded-circle mb-3"
                    style="height: 100px; width: 100px; margin-left: 120px; margin-top: 20px;">
                <div class="in4">
                    <h4>Sang</h4>
                    <p>Start</p>
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
                <div class="question">
                    <strong>Các Câu Hỏi Thường Gặp</strong>


                </div>
            </div>
        </div>

        <div class="profile1">

        </div>
        <div class="prolife3">
            <span class="header-profile">
                <p>Lịch Sử Giao Dịch</p>
                <p>Thông Tin Cá Nhân</p>
                <p>Thông Báo</p>
                <p>Quà Tặng</p>
                <p>Chính Sách</p>

            </span>
            <div class="hozi">
                <hr>
            </div>
            <div class="profile2">
                <div class="form1">
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

                        <input style="border-radius: 5px;  width: 270px; height: 30px; background-color: whitesmoke;"
                            type="email" name="email" placeholder="Email"><br>

                    </div>
                    <div style="padding-top: 30px;">
                        <label>
                            <input type="radio" name="gender" value="male">
                            Nam
                        </label>

                        <label>
                            <input type="radio" name="gender" value="female">
                            Nữ
                        </label>
                    </div>
                </div>


                <div class="form2">
                    <div class="input-with-icon">

                        Ngày Sinh<br>

                        <input style=" width: 270px; height: 30px;   background-color: whitesmoke;" type="datetime"
                            name="birthday" placeholder="Ngày Sinh">

                        <br>
                    </div>
                    <div class="input-with-icon">

                        Số Điện Thoại<br>
                        <input style="border-radius: 5px;  width: 270px; height: 30px; background-color: whitesmoke; "
                            type="number" name="phonenumber" placeholder="Số Điện Thoại"><br>
                    </div>
                    <div class="input-with-icon">

                        Mật Khẩu<br>
                        <input style="border-radius: 5px;  width: 270px; height: 30px; background-color: whitesmoke;"
                            type="password" name="password" placeholder="Mật Khẩu"><br>
                    </div>
                    <button id="submit"> Cập Nhật
                    </button>
                </div>
            </div>
        </div>
    </div>

</body>

</html>
