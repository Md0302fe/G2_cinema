<%-- 
    Document   : Admin_Schedules_Management
    Created on : Mar 14, 2024, 12:33:24 PM
    Author     : GIA TIEN
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="UTF-8" />
        <meta name="viewport" content="width=device-width, initial-scale=1.0" />
        <title>Schedules</title>
        <link rel="stylesheet" href="Assets/Styles/schedulesManagement.css" />
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.1/css/all.min.css">
        <link
            rel="stylesheet"
            href="https://fonts.googleapis.com/css?family=Nunito Sans" />
        <link rel="stylesheet" href="Assets/Styles/sb-admin-2.css"/>
    </head>
    <body>
        <div class="cart" id="wrapper">
            <!-- Sidebar -->
            <%@include file="./Components/AdminNavbar.jsp" %> 
            <div class="d-flex flex-column" id="content-wrapper">
                <div class="main-content">
                    <%@include file="./Components/AdminHeader.jsp" %>
                    <div class="all-content">
                        <h2 class="cart-header bold">Schedules Management</h2>
                        <div class="main-content-table">
                            <table class="cart-table">
                                <thead class="scheduleTableHead">
                                    <tr>
                                        <th class="th-no">No.</th>
                                        <th class="th-name">Movie Name</th>
                                        <th class="th-room">Room</th>
                                        <th class="th-time">Show Time</th>
                                    </tr>
                                </thead>

                                <tbody class="scheduleTableBody">
                                    <c:set var="count" value="0"/>
                                    <c:forEach  items="${requestScope.schedulesList}" var="s">
                                        <tr>
                                        <c:set var="count" value="${count+1}"/>
                                            <th scope="row">${count}</th>
                                            <th>${s.movie_name}</th>
                                            <th>${s.room_name}</th>
                                            <th>${s.schedules_showtime}</th>
                                        </tr>
                                    </c:forEach>
                                </tbody>
                            </table>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <script src="script.js"></script>
    </body>
</html>

