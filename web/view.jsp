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
<link rel="stylesheet" href="./Assets/Styles/viewTicket.css">
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>viewDetailTicket</title>
    </head>
    <body>

        <c:forEach items="${ListC}" var="b">
            <div class="container">
                <header class="mt-3 mb-5">
                    <h1 class="text-center">Transaction History</h1>
                </header>
                <div class="row">
                    <div class="col-md-8 offset-md-2">
                        <div class="card">
                            <div class="card-header">
                                Transaction Details
                            </div>
                            <div class="card-body">
                                <!-- Chi tiết giao dịch sẽ được thêm vào đây -->
                                <p><strong>Date: </strong>${b.getBooking_date()}</p>
                                <p><strong>Seat: </strong>${b.getSeatList()}</p>
                                <p><strong>Time: </strong>${b.getChoiceTime()}</p>
                                <p><strong>Payment Info: </strong>${b.getPayment()}</p>
                                <p><strong>Price: </strong>${b.getTotal_price()}</p>
                            </div>
                        </div>
                    </div>
                </div>
                            <!--<a href="History?id=${sessionScope.account.id}" style="height: 30px; border: 2px solid whitesmoke;">Back</a>-->
                <div class="text-md-center ml-4 return-history">
                    <a class="return-history-btn mr-md-z return-btn" href="History?id=${sessionScope.account.id}"> <i class="fa-solid fa-angle-left"></i>Back</a>
                </div>
            </div>
            <!-- Bootstrap JS và các thư viện JavaScript cần thiết khác -->
            <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
            <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.5.4/dist/umd/popper.min.js"></script>
            <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
        </body>
    </html>
</c:forEach>

</body>
</html>
