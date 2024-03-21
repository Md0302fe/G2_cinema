<%-- 
    Document   : viewHistory
    Created on : Mar 11, 2024, 7:57:43 AM
    Author     : pts03
--%>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<link href="Assets/Styles/header.css" rel="stylesheet" type="text/css"/>
<link href="Assets/Styles/footer.css" rel="stylesheet" type="text/css"/>
<<link rel="stylesheet" href="./Assets/Styles/viewHistory.css"/>
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

            <input type="hidden" name="id" value="${sessionScope.account.id}">

            <input type="hidden" name="booking" value="${sessionScope.booking}">
            <table class="table">
                <thead>
                    <tr>
                        <th scope="col">#</th>
                        <th scope="col">Total</th>
                        <th scope="col">Date</th>
                        <th scope="col"></th>
                    </tr>
                </thead>
                <tbody>
                    <c:forEach items="${ListB}" var="b">
                        <tr class="main-contain">
                            <th scope="row" class="p-21" style="padding: 20px">${b.getBooking_id()}</th>
                            <td>
                                <p class="m-10"><fmt:formatNumber pattern="#,###" value="${b.getTotal_price()}"/><span> VNĐ</span></p>
                            </td>
                            <td class="m-10"style="padding: 21px">${b.getBooking_date()}</td>
                            <td><a href="View?id=${sessionScope.account.id}&booking=${b.getBooking_id()}" class="view-button bold border border-light">View</a></td>
                        </tr>
                    </c:forEach>

                </tbody>
            </table>

        </div>  
    </body>
    <%@include file='./Components/Footer.jsp' %>
</html>

