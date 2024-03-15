<%-- 
    Document   : view
    Created on : Mar 14, 2024, 3:17:36 PM
    Author     : pts03
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet"
      integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC"
      crossorigin="anonymous" />
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <button type="button" class="btn btn-light" data-toggle="button" aria-pressed="false" autocomplete="off" style="background-color: #f7ccac;
	width: 500px;
	height: 200px;
        

    /* additional style */
    position: absolute;
    top: 50%;
    left: 50%;
    transform: translate(-50%, -50%);">
        <c:forEach items="${ListC}" var="b">
            <div style="text-align: center">
                <div style="text-align: center">History booking</div>
                <p>Seat:${b.getSeatList()}</p>
                <p>Date:${b.getChoiceDate()}</p>
                <p>Time:${b.getChoiceTime()}</p>
                <p>Pay:${b.getPayment()}</p>               
            </div>
        </c:forEach>
        
  
</button>
    </body>
</html>
