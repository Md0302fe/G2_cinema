<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="UTF-8" />
        <meta name="viewport" content="width=device-width, initial-scale=1.0" />
        <link href="Assets/Styles/payment.css" rel="stylesheet" type="text/css"/>
        <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Nunito Sans">
        <title>Payment</title>
    </head>
    <body>
        <div>
            <div class="payment-header">
                <nav class="payment-nav">
                    <a href="home">
                        <img src="./Assets/Image/Payment_icon/logo.png" alt="logo" />
                    </a>
                    <a href="home">
                        <p> Hủy giao dịch <i class="fa-solid fa-xmark"></i></p>
                    </a>
                </nav>
            </div>
            <div class="process">
                <ul class="process__container">
                    <li>Chọn phim / Rạp / Suất</li>
                    <li>Chọn ghế</li>
                    <li>Thanh toán</li>
                    <li>Xác nhận</li>
                </ul>
            </div>
            <div class="container__bg">
                <c:set var="data" value="${requestScope.data}"/>
                <c:set var="movie" value="${requestScope.movie}"/>
                <c:set var="numberSeat" value="${requestScope.numerSeat}"/>
                <form action="Payment" method="POST">
                    <div class="main-container">
                        <div class="method">
                            <h2>Chọn phương thức thanh toán</h2>
                            <div class="payoo-payment">
                                <input type="radio" name="payment" value="Payoo" id="payoo" checked=""/>
                                <label for="payoo">
                                    <img src="./Assets/Image/Payment_icon/payoo.jpg" alt="payoo" />
                                </label>
                                <label for="payoo"> HSBC/Payoo</label>
                            </div>
                            <div class="payoo-payment">
                                <input type="radio" name="payment" value="Shopee Pay" id="shopee" />
                                <label for="shopee">
                                    <img src="./Assets/Image/Payment_icon/shopeepay.jpg" alt="shopeepay" />
                                </label>
                                <label for="shopee"> Ví ShopeePay</label>
                            </div>
                            <div class="payoo-payment">
                                <input type="radio" name="payment" value="Momo" id="momo" />
                                <label for="momo">
                                    <img src="./Assets/Image/Payment_icon/momo.jpg" alt="momo" />
                                </label>
                                <label for="momo"> Ví điện tử MoMo</label>
                            </div>
                            <div class="payoo-payment">
                                <input type="radio" name="payment" value="Zalo Pay" id="zalopay" />
                                <label for="zalopay">
                                    <img src="./Assets/Image/Payment_icon/zalopay.jpg" alt="zalopay" />
                                </label>
                                <label for="zalopay"> ZaloPay</label>
                            </div>
                            <div class="payoo-payment">
                                <input type="radio" name="payment" value="VN Pay" id="vnpay" />
                                <label for="vnpay">
                                    <img src="./Assets/Image/Payment_icon/vnpay.jpg" alt="vnpay" />
                                </label>
                                <label for="vnpay"> VNPAY</label>
                            </div>
                            <p>
                                <span>(*)</span> Bằng việc click/chạm vào THANH TOÁN bên phải, bạn
                                đã xác nhận hiểu rõ các Quy Định Giao Dịch Trực Tuyến của chúng tôi.
                            </p>
                        </div>
                        <div class="payment-info">
                            <div class="movie-info">
                                <!--Chứa ảnh của phim đang mua-->
                                <img src="./Assets/Image/Movie_Image_Vip/${movie.movie_img}" alt="movie" />
                                <div class="info">
                                    <h3>${movie.name}</h3>
                                    <p>${list_category}</p>
                                </div>
                            </div>
                            <div class="address">
                                <p>${data.room_name}</p>
                                <p>Suất <span>${data.choice_time}</span> <span>${data.date}</span></p>
                            </div>
                            <div class="seat">
                                <div class="seat-number">
                                    <p><span>${numberSeat}x</span> ghế</p>
                                    <p>Ghế: <span>${data.selectedSeats}</span></p>
                                </div>
                            </div>
                            <div class="total-price">
                                <p>Tổng cộng:</p>
                                <p><fmt:formatNumber pattern="#,###" value="${data.total_price}"/><span> VNĐ</span></p>
                            </div>
                        </div>
                        <input type="hidden" name="id" value="${data.id}">
                        <input type="hidden" name="date" value="${data.date}">
                        <input type="hidden" name="choiceTime" value="${data.choice_time}">
                        <input type="hidden" name="room_name" value="${data.room_name}">
                        <input type="hidden" name="total_price" value="${data.total_price}">
                        <input type="hidden" name="selectedSeats" value="${data.selectedSeats}">
                        <div class="submit">
                            <button class="submit__return" id="return">Quay lại</button>
                            <button type="submit" class="submit__confirm" id="submit">Thanh toán</button>
                        </div>
                    </div>
                </form>

            </div>
        </div>
        <script src="https://cdn.jsdelivr.net/npm/sweetalert2@11"></script>
        <script>
            var paymentSuccess = false; // Replace with your actual logic
            document.getElementById('return').addEventListener('click', function () {
            event.preventDefault();
            // Retrieve values from hidden input fields
            var id = document.getElementsByName("id")[0].value;
            var date = document.getElementsByName("date")[0].value;
            var choiceTime = document.getElementsByName("choiceTime")[0].value;
            // Tạo một URL mới với các thông tin được truyền qua query parameters
            var url = "/CINEMA/seat?id=" + encodeURIComponent(id)
                    + "&date=" + encodeURIComponent(date)
                    + "&time=" + encodeURIComponent(choiceTime)

                    // Chuyển hướng người dùng đến URL mới
                    window.location.href = url;
            });
        </script>
        <script>
            // Function to show success message and redirect after 5 seconds
            function showSuccessAndRedirect() {
            Swal.fire({
            icon: 'success',
                    title: 'Thanh toán thành công!',
                    text: 'Chuyển về trang chủ sau 5 giây...',
                    timer: 5000,
                    timerProgressBar: true,
                    showConfirmButton: false
            }).then(() => {
            // Redirect to the homepage after the timer is finished
            window.location.href = "/CINEMA/home";
            });
            }
            document.getElementById('submit').addEventListener('click', function () {
            paymentSuccess = true;
            }
            // Check if the payment was successful (you may need to adjust this based on your backend logic)


            // Call the function if the payment was successful
            if (paymentSuccess) {
            showSuccessAndRedirect();
            }
        </script>
