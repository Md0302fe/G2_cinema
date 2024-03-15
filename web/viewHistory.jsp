<%-- 
    Document   : viewHistory
    Created on : Mar 11, 2024, 7:57:43 AM
    Author     : pts03
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<link href="Assets/Styles/header.css" rel="stylesheet" type="text/css"/>
<link href="Assets/Styles/footer.css" rel="stylesheet" type="text/css"/>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet"
      integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC"
      crossorigin="anonymous" />
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>BookingHistory</title>
    </head>
    <body>
        <%@include file='./Components/Header.jsp' %>
        <div style="min-height: 532px;margin-top: 9%">
        <form action="View" method="GET">
            <input type="hidden" name="id" value="${sessionScope.account.id}">
            
            <input type="hidden" name="booking" value="${sessionScope.booking}">
            <table class="table table-dark">
                <thead>
                    <tr>
                        <th scope="col">#</th>
                        <th scope="col">BookingId</th>
                        <th scope="col">Total</th>
                        <th scope="col">Date</th>
                        <th scope="col"></th>
                    </tr>
                </thead>
                <tbody>
                    <c:forEach items="${ListB}" var="b">

                        <tr>
                            <th scope="row">${b.getBooking_id()}</th>
                            <td>${b.getBooking_id()}</td>
                            <td>${b.getTotal_price()}</td>
                            <td>${b.getBooking_date()}</td>
                            <td><button type="submit" style="background-color: black;color: white">View</button></td>
                        </tr>
                    </c:forEach>

                </tbody>
            </table>
        </form>
           </div>  
    </body>
<%@include file='./Components/Footer.jsp' %>
</html>

