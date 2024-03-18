<%-- Document : CreateSeatPage Created on : Feb 28, 2024, 11:16:29 PM Author : GIA TIEN --%>

<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>

<!DOCTYPE html>
<html lang="en">

    <head>
        <meta charset="UTF-8" />
        <meta name="viewport" content="width=device-width, initial-scale=1.0" />
        <link href="Assets/Styles/header.css" rel="stylesheet" type="text/css" />
        <link href="Assets/Styles/footer.css" rel="stylesheet" type="text/css" />
        <link rel="stylesheet" href="Assets/Styles/gridTien.css" />
        <link rel="stylesheet" href="Assets/Styles/createSeatPage.css" />
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet"
              integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC"
              crossorigin="anonymous" />
        <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Nunito Sans">
        <script src="https://code.jquery.com/jquery-1.10.2.js" type="text/javascript"></script>
        <title>GG CINEMA</title>
        <style>
            .time_slot.active {
                background-color: #034ea2;
                color: #fff;
            }
            .active_seat {
                background-color: rgb(242, 107, 56);
                color: #fff;
            }

            .disable_seat {
                color: #afafaf;
                background-color: #868686;
                pointer-events: none;
            }
        </style>
    </head>
    <body>
        <%@include file='./Components/Header.jsp' %>
        <div class="seat_booking grid wide">
            <div>
                <div class="next_stept">
                    <div class="details_steps">
                        <h5 class="items border_stept ">Chọn phim / Rạp / Suất </h5>
                        <h5 class="items border_stept ">Chọn ghế </h5>
                        <h5 class="items">Thanh toán</h5>
                        <h5 class="items">Xác nhận </h5>
                    </div>
                </div>
                <div class="all_seat" style="padding-top: 4%">
                    <div class="content_left">
                        <div class="choose_time_movie grid wide">
                            <div class="show_time_movie flex">
                                <div class="change_time_movie">
                                    <p class="bold">Đổi suất chiếu</p>
                                </div>
                                <div class="time_movie">
                                    <c:forEach items="${requestScope.listTimes}" var="time">
                                        <c:choose>
                                            <c:when test="${requestScope.choiceTime eq time}">
                                                <a href="/CINEMA/seat?id=${id_raw}&date=${date}&time=${time}" class="time_slot border border-1 font-semibold active">${time}</a>
                                            </c:when>
                                            <c:otherwise>
                                                <a href="/CINEMA/seat?id=${id_raw}&date=${date}&time=${time}" class="time_slot border border-1 font-semibold ">${time}</a>
                                            </c:otherwise>
                                        </c:choose>
                                    </c:forEach>
                                </div>
                            </div>
                        </div>

                        <div class="choose_seat">
                            <ul class="seat_layout">
                                <li class="seat_items">
                                    <div class="text1">L</div>
                                    <div class="seats">
                                        <% for (int i = 1; i <= 12; i++) { %>
                                        <button class="border_seats border rounded" id="L<%= i %>" data-label="L">
                                            <span class="seat_numbers"  ><%= i %></span>
                                        </button>
                                        <%}%>
                                    </div>
                                    <div class="text2">L</div>
                                </li>

                                <li class="seat_items">
                                    <div class="text1">K</div>
                                    <div class="seats">
                                        <% for (int i = 1; i <= 12; i++) { %>
                                        <button class="border_seats border rounded" id="K<%= i %>" data-label="L" >
                                            <span class="seat_numbers"><%= i %></span>
                                        </button>
                                        <% } %>
                                    </div>
                                    <div class="text2">K</div>
                                </li>
                                <li class="seat_items">
                                    <div class="text1">J</div>
                                    <div class="seats">
                                        <% for (int i = 1; i <= 12; i++) { %>
                                        <button class="border_seats border rounded" id="J<%= i %>" data-label="L" >
                                            <span class="seat_numbers"><%= i %></span>
                                        </button>
                                        <% } %>
                                    </div>
                                    <div class="text2">J</div>
                                </li>
                                <li class="seat_items">
                                    <div class="text1">I</div>
                                    <div class="seats">
                                        <% for (int i = 1; i <= 12; i++) { %>
                                        <button class="border_seats border rounded" id="I<%= i %>" data-label="L" >
                                            <span class="seat_numbers"><%= i %></span>
                                        </button>
                                        <% } %>
                                    </div>
                                    <div class="text2">I</div>
                                </li>
                                <li class="seat_items">
                                    <div class="text1">H</div>
                                    <div class="seats">
                                        <% for (int i = 1; i <= 12; i++) { %>
                                        <button class="border_seats border rounded" id="H<%= i %>" data-label="L">
                                            <span class="seat_numbers"><%= i %></span>
                                        </button>
                                        <% } %>
                                    </div>
                                    <div class="text2">H</div>
                                </li>
                                <li class="seat_items">
                                    <div class="text1">G</div>
                                    <div class="seats">
                                        <% for (int i = 1; i <= 12; i++) { %>
                                        <button class="border_seats border rounded" id="G<%= i %>" data-label="L">
                                            <span class="seat_numbers"><%= i %></span>
                                        </button>
                                        <% } %>
                                    </div>
                                    <div class="text2">G</div>
                                </li>
                                <li class="seat_items">
                                    <div class="text1">F</div>
                                    <div class="seats">
                                        <% for (int i = 1; i <= 12; i++) { %>
                                        <button class="border_seats border rounded" id="F<%= i %>" data-label="L">
                                            <span class="seat_numbers"><%= i %></span>
                                        </button>
                                        <% } %>
                                    </div>
                                    <div class="text2">F</div>
                                </li>
                                <li class="seat_items">
                                    <div class="text1">E</div>
                                    <div class="seats">
                                        <% for (int i = 1; i <= 12; i++) { %>
                                        <button class="border_seats border rounded" id="E<%= i %>" data-label="L">
                                            <span class="seat_numbers"><%= i %></span>
                                        </button>
                                        <% } %>
                                    </div>
                                    <div class="text2">E</div>
                                </li>

                                <li class="seat_items">
                                    <div class="text1">D</div>
                                    <div class="seats">
                                        <% for (int i = 1; i <= 12; i++) { %>
                                        <button class="border_seats border rounded" id="D<%= i %>" data-label="L">
                                            <span class="seat_numbers"><%= i %></span>
                                        </button>
                                        <% } %>
                                    </div>
                                    <div class="text2">D</div>
                                </li>
                                <li class="seat_items">
                                    <div class="text1">C</div>
                                    <div class="seats">
                                        <% for (int i = 1; i <= 12; i++) { %>
                                        <button class="border_seats border rounded" id="C<%= i %>" data-label="L">
                                            <span class="seat_numbers"><%= i %></span>
                                        </button>
                                        <% } %>
                                    </div>
                                    <div class="text2">C</div>
                                </li>
                                <li class="seat_items">
                                    <div class="text1">B</div>
                                    <div class="seats">
                                        <% for (int i = 1; i <= 12; i++) { %>
                                        <button class="border_seats border rounded" id="B<%= i %>" data-label="L">
                                            <span class="seat_numbers"><%= i %></span>
                                        </button>
                                        <% } %>
                                    </div>
                                    <div class="text2">B</div>
                                </li>
                                <li class="seat_items">
                                    <div class="text1">A</div>
                                    <div class="seats">
                                        <% for (int i = 1; i <= 12; i++) { %>
                                        <button class="border_seats border rounded" id="A<%= i %>" data-label="L">
                                            <span class="seat_numbers"><%= i %></span>
                                        </button>
                                        <% } %>
                                    </div>
                                    <div class="text2">A</div>
                                </li>
                            </ul>
                        </div>

                        <div class="seatstatus" style="margin-top: 20px">
                            <p class="man_hinh">Màn Hình</p>
                            <div class="border_orange"></div>
                            <div class="all_status">
                                <div class="status_left">
                                    <div class="GDB">
                                        <div class="GDB_border_color1 border border-1 rounded-3"></div>
                                        <div>Ghế đã bán</div>
                                    </div>
                                    <div class="GDC">
                                        <div class="GDC_border_color2 border border-1 rounded-3"></div>
                                        <div>Ghế đang chọn</div>
                                    </div>
                                </div>
                                <div class="status_right">
                                    <div class="VIP_seat">
                                        <div class="VIP border border border-warning border-1 rounded-3">
                                        </div>
                                        <div>Ghế VIP</div>
                                    </div>
                                    <div class="single_seat">
                                        <div class="single border border-1 rounded-3"></div>
                                        <div>Ghế đơn</div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>

                    <div class="content_right">
                        <div class="booking_summary">
                            <div class="line_booking"></div>
                            <div class="booking_top mg-t-10px">
                                <img alt="Mai" loading="lazy" width="130" height="180" decoding="async"
                                     data-nimg="1"
                                     class="xl:w-full xl:h-full md:w-[80px] md:h-[120px] w-[90px] h-[110px] rounded object-cover object-cover duration-500 ease-in-out group-hover:opacity-100 scale-100 blur-0 grayscale-0)"
                                     src="./Assets/Image/Movie_Image_Vip/${movie.movie_img}"
                                     style="color: transparent" />
                                <div class="content_booking">
                                    <h3 class="movie_name">${movie.name}</h3>
                                    <div class="booking_info">
                                        <p class="subtitle">Digital Phụ Đề</p>
                                        <p style="margin-top: 15px; margin-left: 10px">-</p>
                                        <p class="movie_rated border border-1 rounded">T18</p>
                                    </div>
                                </div>
                            </div>
                            <div class="total_booking mg-t-10px">
                                <div class="theater_name flex">
                                    <p class="bold ">CGV CẦN THƠ</p>
                                    <p style="margin: 0px 8px">--</p>
                                    <div id="container_room">
                                        <p id="Room_name_js">${roomName}</p>
                                    </div>
                                </div>
                                <div class="showtime_booking flex">
                                    <p>Suất:</p>
                                    <p class="movie_time bold" id="time_Slot_js" >${requestScope.choiceTime}</p>
                                    <p style="margin: -1px 6px">--</p>
                                    <p>
                                        ${dayOfWeek},
                                    <p class="date_movie bold">${date}</p>
                                </div>
                                <div class="line_totalbooking"></div>
                                <div class="bill_booking" id="billSection">
                                    <div class="box_total_price flex">
                                        <div class="total_seat">
                                            <div class="flex" style="margin-bottom: -10px;">
                                                <p class="bold" id="lenghOfSeats" style="margin-right: 6px;">1x</p>
                                                <p style="width: 100%;">Ghế đơn</p>
                                            </div>
                                            <div class="flex">
                                                <p style="margin-right: 6px;">Ghế:</p>
                                                <p class="bold" id="push_Seat_Here">0đ</p>
                                            </div>
                                        </div>
                                        <!--<p class="price_seat_black bold total_money">0₫</p>-->
                                    </div>
                                    <div class="line_totalbooking"></div>
                                </div>
                                <div class="total_price flex">
                                    <p class="tongcong bold" style="width: 86px;">Tổng cộng:</p>
                                    <p class="price_seat_orange bold price" id="total_money">0đ</p>
                                </div>
                            </div>
                            <div class="booking_bottom flex">
                                <button class="text_back border border-white rounded pd-t-10px">
                                    <p>Quay lại</p>
                                </button>
                                <button class="text_continute border border-white rounded pd-t-10px">
                                    <button class="border border-light rounded" id="nextButton">Tiếp tục</button>
                                </button>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>

        <%@include file='./Components/Footer.jsp' %>

        <script src="https://cdn.jsdelivr.net/npm/sweetalert2@11"></script>

        <script type="text/javascript" >

            // Lấy giá trị của tham số 'id' từ URL
            var urlParams = new URLSearchParams(window.location.search);
            var id = urlParams.get("id");
            var date = urlParams.get("date");
            var choiceTime_In = document.getElementById("time_Slot_js").textContent;
            var room_name = document.getElementById("Room_name_js").textContent;

            document.addEventListener('DOMContentLoaded', function ()
            {
                // Lấy danh sách các ghế đã được chọn từ attribute của thẻ
                var listSeats = <%= request.getAttribute("listSeats") %>;
                checkSeatNames(listSeats);
                // Danh sách các ghế được chọn
                var selectedSeats = [];
                // Lấy tất cả các ghế
                var seats = document.querySelectorAll('.border_seats');
                // Lặp qua từng ghế và thêm sự kiện click
                seats.forEach(function (seat) {
                    seat.addEventListener('click', function () {
                        // Kiểm tra nếu số ghế đã chọn vượt quá 8
                        if (selectedSeats.length >= 8 && !this.classList.contains('active_seat')) {
                            alert('Bạn chỉ được chọn tối đa 8 ghế.');
                            return; // Không thêm ghế nữa nếu vượt quá 8 ghế
                        }
                        // Toggle class active_seat
                        this.classList.toggle('active_seat');
                        // Lấy thông tin về vị trí ghế
                        var row = this.closest('.seat_items').querySelector('.text1').textContent;
                        var seatNumber = this.querySelector('.seat_numbers').textContent;
                        var seatId = row + seatNumber;
                        // Kiểm tra xem ghế đã được chọn hay không và thêm hoặc xóa khỏi danh sách
                        if (this.classList.contains('active_seat')) {
                            selectedSeats.push(seatId);
                        } else {
                            var index = selectedSeats.indexOf(seatId);
                            if (index !== -1) {
                                selectedSeats.splice(index, 1);
                            }
                        }
                        // In ra danh sách ghế đã chọn
                        var selectedSeatsID = selectedSeats.join(', ');
                        document.getElementById('push_Seat_Here').innerHTML = selectedSeatsID;
                        document.getElementById('lenghOfSeats').innerHTML = selectedSeats.length + "x";
                        var totalSeats = document.querySelectorAll('.price');
                        for (var i = 0; i < totalSeats.length; i++) {
                            if (totalSeats[i]) {
                                totalSeats[i].innerHTML = (selectedSeats.length * 90000) + "đ";
                            }
                        }
                    });
                });

                function checkSeatNames(listSeats) {
                    for (var i = 0; i < listSeats.length; i++) {
                        listSeats[i].classList.add("disable_seat");
                    }
                }

                // Xử lý sự kiện khi ấn nút "Next"
                document.getElementById('nextButton').addEventListener('click', function () {
                    choiceTime_In = document.getElementById("time_Slot_js").textContent;

                    // Kiểm tra xem người dùng đã chọn ít nhất 1 ghế chưa
                    if (selectedSeats.length > 0) {
                        // Tạo một URL mới với các thông tin được truyền qua query parameters
                        var url = "/CINEMA/Payment?id=" + encodeURIComponent(id) +
                                "&date=" + encodeURIComponent(date) +
                                "&choice_time=" + encodeURIComponent(choiceTime_In) +
                                "&room_name=" + encodeURIComponent(room_name) +
                                "&selectedSeats=" + encodeURIComponent(selectedSeats);

                        // Chuyển hướng người dùng đến URL mới
                        window.location.href = url;
                    } else {
                        // Hiển thị alert sử dụng SweetAlert2
                        Swal.fire({
                            icon: 'error',
                            title: 'Oops...',
                            text: 'Vui lòng chọn ít nhất 1 ghế trước khi tiếp tục.',
                        });
                    }
                });
            });

        </script>
        <script src="Assets/JS/createSeatPage.js" type="text/javascript"></script>            

    </body>
</html>