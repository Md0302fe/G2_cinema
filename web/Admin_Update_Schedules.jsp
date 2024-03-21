<%-- 
    Document   : Admin_Show_Date
    Created on : Mar 14, 2024, 11:24:37 PM
    Author     : GIA TIEN
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/sweetalert2@11">
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.1/css/all.min.css">
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
        <link
            rel="stylesheet"
            href="https://fonts.googleapis.com/css?family=Nunito Sans" />
        <link rel="stylesheet" href="Assets/Styles/sb-admin-2.css"/>
        <link rel="stylesheet" href="Assets/Styles/schedulesManagement.css" />
        <link rel="stylesheet" href="Assets/Styles/Admin_showdate.css"/>
        <title>Management Show Date</title>
    </head>
    <body>  
        <div id="wrapper">
            <!-- Sidebar -->
            <%@include file="./Components/AdminNavbar.jsp" %> 
            <!-- Content Wrapper -->
            <div id="content-wrapper" class="d-flex flex-column">
                <!-- Main Content -->
                <div id="content">
                    <%@include file="./Components/AdminHeader.jsp" %>
                    <div class="container-fluid">
                        <div class="main_content1 font-semibold">
                            <div class="movie_detail">
                                <div class="tb_showdate">
                                    <div class="content_list">
                                        <h3 class="content_list_title bold">Chỉnh Sửa Lịch Chiếu</h3>
                                        <div class="main-content-table" style="margin-bottom: 32px">
                                            <table class="cart-table">
                                                <u style="padding : 32px" ><h4 style="text-align: left">Hãy chọn phim mới</h4></u>
                                                <thead class="scheduleTableHead">
                                                    <tr>
                                                        <th class="th-no" style="text-align: center;">No.</th>
                                                        <th class="th-name" style="text-align: center;">Tên Phim</th>
                                                        <th class="th-room" style="text-align: center;">Phòng</th>
                                                        <th class="th-time" style="text-align: center;">Giờ Chiếu</th>
                                                        <th class="th-time" style="text-align: center;"></th>
                                                    </tr>
                                                </thead>
                                                <form action="updateschedules" method="POST">
                                                    <tbody>
                                                        <tr>
                                                            <td class="th-no" style="text-align: center;">1</td>
                                                            <td class="th-name" style="text-align: center;">
                                                                <p>Trước edit : ${movie.name}</p>
                                                                <select name="selectedMovie" id="" class="form-control" onfocus='this.size = 5;' onblur='this.size = 1;' onchange='this.size = 1; this.blur();'>
                                                                    <c:forEach var="m" items="${listMovie}">                                                           
                                                                        <option style="padding: 12px; cursor: pointer;" value="${m.id}">${m.name}</option>                                                               
                                                                    </c:forEach>
                                                                </select>
                                                            </td>
                                                            <td class="th-room" style="text-align: center;">${schedules.room_name}</td>
                                                            <td class="th-time" style="text-align: center;">${schedules.schedules_showtime}</td>
                                                            <td class="th-time" style="text-align: center;">
                                                                <button type="submit">Xác nhận</button>
                                                            </td>
                                                        </tr>
                                                    </tbody>
                                                </form>
                                                <div>
                                                    <h3 style="color : green">${mess}</h3>
                                                    <h5><a href="/CINEMA/detailschedules?id=${sessionScope.showDate}" class="buttonBack" style="float :right;
                                                           background-color: black;
                                                           float: right;
                                                           color: white;
                                                           border-radius: 5px;
                                                           margin-bottom: 12px;
                                                           padding: 4px;
                                                           "> Xem Thay Đổi</a></h5>
                                                </div>
                                            </table>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <footer class="sticky-footer bg-white">
                    <div class="container my-auto">
                        <div class="copyright text-center my-auto">                           
                        </div>
                    </div>
                </footer>
            </div>
        </div>
        <script src="Assets/JS/Admin_ShowDate.js"></script>                               
    </body>
</html>

