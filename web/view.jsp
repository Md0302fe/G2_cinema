<%-- 
    Document   : view
    Created on : Mar 14, 2024, 3:17:36 PM
    Author     : pts03
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet"
      integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC"
      crossorigin="anonymous" />
<link rel="stylesheet" href="./Assets/Styles/viewTicket.css">
<link href="Assets/Styles/header.css" rel="stylesheet" type="text/css" />
<link href="Assets/Styles/footer.css" rel="stylesheet" type="text/css" />
<link rel="stylesheet" href="Assets/Styles/createSeatPage.css" />
<link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Nunito Sans">
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>viewDetailTicket</title>
    </head>
    <body>
        <%@include file='./Components/Header.jsp' %>
        <c:set var="b" value="${requestScope.ListC}"/>
            <div class="content_right ml_34 mb_16">
                <div class="booking_summary">
                    <div class="line_booking"></div>
                    <div class="booking_top mg-t-10px justify-content-center">
                        <img alt="Mai" loading="lazy" width="300" height="150" decoding="async"
                             data-nimg="1"
                             class="rounded object-cover object-cover duration-500 ease-in-out group-hover:opacity-100 scale-100 blur-0 grayscale-0)"
                             src="./Assets/Image/Payment_icon/ticket_background.png"
                             style="color: transparent" />

                    </div>
                    <div class="total_booking mg-t-10px">
                        <div class="theater_name flex">
                            <p class="bold ">CGV CẦN THƠ</p>
                        </div>
                        <div class="showtime_booking flex jusbet">
                            <p class="bold" id="time_Slot_js" >Suất: ${b.choiceTime}</p>
                            <p class="date_movie bold">Ngày: ${b.booking_date}</p>
                        </div>
                        <div class="line_totalbooking"></div>
                        <div class="bill_booking" id="billSection">
                            <div class="box_total_price flex">
                                <div class="total_seat">
                                    <div class="flex" style="margin-bottom: -10px;">
                                        <p class="bold" id="lenghOfSeats" style="margin-right: 6px;">${requestScope.n}x</p>
                                        <p style="width: 100%;">Ghế đơn</p>
                                    </div>
                                    <div class="flex">
                                        <p style="margin-right: 6px;">Ghế: ${b.seatList}</p>
                                    </div>
                                </div>
                                <!--<p class="price_seat_black bold total_money">0₫</p>-->
                            </div>
                            <div class="line_totalbooking"></div>
                        </div>
                        <div class="total_price flex">
                            <p class="tongcong bold" style="width: 86px;">Tổng cộng:</p>
                            <p><fmt:formatNumber pattern="#,###" value="${b.total_price}"/><span> VNĐ</span></p>
                        </div>
                    </div>
                </div>
            </div>
        <%@include file='./Components/Footer.jsp' %>
    </body>                    
</html>
