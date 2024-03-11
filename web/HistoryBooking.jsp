<%-- 
    Document   : HistoryBooking
<<<<<<< OURS
    Created on : Mar 7, 2024, 8:42:41 AM
    Author     : pts03
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <form>
            <input type="hidden" name="userid" value="${sessionScope.account.id}">
=======
    Created on : Mar 4, 2024, 9:12:18 PM
    Author     : pts03
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <form action="History" method="GET">
        <input type="hidden" name="history" value="${sessionScope.account.id}">
        <button type="submit">View History</button>
>>>>>>> THEIRS
        </form>
    </body>
</html>
