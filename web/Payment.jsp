<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <link rel="stylesheet" href="./Assets/Styles/payment.css" />
    <title>Payment</title>
  </head>
  <body>
    <div class="payment-header">
      <nav class="payment-nav">
        <a href="#">
          <img src="./Assets/Image/Payment_icon/logo.png" alt="logo" />
        </a>
        <a href="#">
          <p>Hủy giao dịch <i class="fa-solid fa-xmark"></i></p>
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
      <div class="main-container">
        <div class="method">
          <h2>Chọn phương thức thanh toán</h2>
          <div class="payoo-payment">
              <input type="radio" name="payment" id="payoo" checked=""/>
            <label for="payoo">
                <img src="./Assets/Image/Payment_icon/payoo.jpg" alt="payoo" />
            </label>
            <label for="payoo"> HSBC/Payoo</label>
          </div>
          <div class="payoo-payment">
            <input type="radio" name="payment" id="shopee" />
            <label for="shopee">
              <img src="./Assets/Image/Payment_icon/shopeepay.jpg" alt="shopeepay" />
            </label>
            <label for="shopee"> Ví ShopeePay</label>
          </div>
          <div class="payoo-payment">
            <input type="radio" name="payment" id="momo" />
            <label for="momo">
              <img src="./Assets/Image/Payment_icon/momo.jpg" alt="momo" />
            </label>
            <label for="momo"> Ví điện tử MoMo</label>
          </div>
          <div class="payoo-payment">
            <input type="radio" name="payment" id="zalopay" />
            <label for="zalopay">
              <img src="./Assets/Image/Payment_icon/zalopay.jpg" alt="zalopay" />
            </label>
            <label for="zalopay"> ZaloPay</label>
          </div>
          <div class="payoo-payment">
            <input type="radio" name="payment" id="vnpay" />
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
            <img src="./Assets/Image/Payment_icon/movie-1.jpg" alt="movie" />
            <div class="info">
              <h3>Mật vụ ong</h3>
              <p>2D Phụ đề</p>
            </div>
          </div>
          <div class="address">
            <p>Tên rạp - Số phòng</p>
            <p>Suất <span>16:00</span> - Thứ Bảy, <span>Ngày ...</span></p>
          </div>
          <div class="seat">
            <div class="seat-number">
              <p><span>1x </span> ghế</p>
              <p>Ghế: <span>A1</span></p>
            </div>
            <div class="seat-price">
              <h4><span>85.000</span> đ</h4>
            </div>
          </div>
          <div class="total-price">
            <p>Tổng cộng:</p>
            <h4><span>85.000</span> đ</h4>
          </div>
        </div>
        <div class="submit">
          <button class="submit__return">Quay lại</button>
          <button class="submit__confirm">Thanh toán</button>
        </div>
      </div>
    </div>
<%@include file='./Components/Footer.jsp' %>
    
