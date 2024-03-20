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
        <link href="Assets/Styles/AddMovie.css" rel="stylesheet" type="text/css"/>
        <link
            rel="stylesheet"
            href="https://fonts.googleapis.com/css?family=Nunito Sans" />
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/sweetalert2@11">
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
                                        <h3 class="content_list_title bold">Danh Sách Lịch Chiếu</h3>
                                        <div class="table_row t_row" >
                                            <c:forEach items="${list}" var="date" varStatus="loop">
                                                <c:if test="${loop.index % 6 == 0}">
                                                    <div class="row_container">
                                                    </c:if>
                                                    <div class="table_cell">
                                                        <c:choose>
                                                            <c:when test="${requestScope.datecheck eq date}">
                                                                <button class="date_schedules table-cell-button tb_showdate}" id="active-Date" type="button" onclick="handleDate('${date}')">${date}</button>
                                                            </c:when>
                                                            <c:otherwise>
                                                                <button class="date_schedules table-cell-button tb_showdate}" type="button" onclick="handleDate('${date}')">${date}</button>
                                                            </c:otherwise>
                                                        </c:choose>
                                                    </div>
                                                    <c:if test="${loop.index % 6 == 5 || loop.last}">
                                                    </div>
                                                </c:if>
                                            </c:forEach>
                                        </div>
                                        <div class="main-content-table">
                                            <table class="cart-table">
                                                <thead class="scheduleTableHead">
                                                    <tr>
                                                        <th class="th-no" style="text-align: center;">No.</th>
                                                        <th class="th-name" style="text-align: center;">Tên Phim</th>
                                                        <th class="th-room" style="text-align: center;">Phòng</th>
                                                        <th class="th-time" style="text-align: center;">Giờ Chiếu</th>
                                                        <th class="th-time" style="text-align: center;"></th>
                                                    </tr>
                                                </thead>
                                                <tbody class="scheduleTableBody">
                                                    <c:set var="count" value="0"/>
                                                    <c:forEach  items="${requestScope.schedulesList}" var="s">
                                                        <c:set var="count" value="${count+1}"/>
                                                        <tr>
                                                            <td scope="row" style="text-align: center;">${count}</td> <!-- Thay đổi từ <th> thành <td> -->
                                                            <td style="text-align: center;">${s.movie_name}</td>
                                                            <td style="text-align: center;">${s.room_name}</td>
                                                            <td style="text-align: center;">${s.schedules_showtime}</td>

                                                            <td style="padding: 6px; display: flex"> 
                                                                <button type="button" class="w-100 mb-3 btn btn-primary" onclick="handleEdit('${s.schedules_id}')">Chỉnh sửa</button>
                                                                <button type="button" class="w-100 btn btn-danger" onclick="confirmDelete('${s.schedules_id}')">Xóa</button>
<!--                                                                <div style="
                                                                     color: white;
                                                                     padding: 2px 15px;
                                                                     background-color: #109702;
                                                                     display: inline-block;
                                                                     border-radius: 3px;
                                                                     text-align: left;
                                                                     float: left;
                                                                     cursor: pointer;
                                                                     " class="adjustSchedules hoverEdit" onclick="handleEdit('${s.schedules_id}')">Edit</div>
                                                                <div style="
                                                                     cursor: pointer;
                                                                     display: inline-block;
                                                                     text-align: right;
                                                                     float: right;
                                                                     background-color: #851919;
                                                                     color: white;
                                                                     padding: 2px 15px;
                                                                     border-radius: 5px;
                                                                     " class="adjustSchedules hoverDelete" onclick="confirmDelete('${s.schedules_id}')">Delete</div>-->
                                                            </td>
                                                        </tr>
                                                    </c:forEach>
                                                </tbody>
                                            </table>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <script>
            function handleEdit(id) {
                console.log(id);
                var url = "/CINEMA/updateschedules?id=" + id;
                window.location.href = url;
            }

            function confirmDelete(id) {
                Swal.fire({
                    title: 'Xác Nhận Xóa?',
                    text: 'Hành động này không thể hoàn tác!',
                    icon: 'warning',
                    showCancelButton: true,
                    confirmButtonText: 'Xác Nhận',
                    cancelButtonText: 'Hủy'
                }).then((result) => {
                    if (result.isConfirmed) {
                        // Nếu người dùng xác nhận muốn xóa, chuyển đến servlet
                        window.location.href = "deleteSchedules?scheid=" + id;
                    }
                });
            }
        </script>
        <script src="https://cdn.jsdelivr.net/npm/sweetalert2@11"></script>
        <script src="Assets/JS/Admin_ShowDate.js"></script>
    </body>
</html>

