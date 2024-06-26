<%-- 
    Document   : AddMovie
    Created on : Feb 27, 2024, 11:47:04 AM
    Author     : MinhDuc
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html">
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link href="Assets/Styles/AddMovie.css" rel="stylesheet" type="text/css"/>
        
        <link href="Assets/Styles/sb-admin-2.css" rel="stylesheet" type="text/css"/>
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.1/css/all.min.css">
        <link
            href="https://fonts.googleapis.com/css?family=Nunito:200,200i,300,300i,400,400i,600,600i,700,700i,800,800i,900,900i"
            rel="stylesheet">
        <title>JSP Page</title>
    </head>
    <body>
        <div id="wrapper">
            <!-- Sidebar - NAVIGATION-BAR -->
            <%@include file="./Components/AdminNavbar.jsp" %>     
            <!-- Content Wrapper -->
            <div id="content-wrapper" class="d-flex flex-column">
                <!-- Main Content -->
                <div id="content">
                    <%@include file="./Components/AdminHeader.jsp" %>
                    <!----------- ADD MOVIES -------------->
                    <form action="setupschedules" method="post">
                        <div class="container-fluid" style="padding-top: 32px ; min-height: 600px;">
                            <!-- Page Heading -->
                            <h1 style="margin-left:100px">Lên lịch chiếu</h1>
                            <div class="main_content1 font-semibold">
                                <h1 style="margin-left:240px ; margin-bottom: 24px" >Cho CINEMA GG</h1>
                                <div class="movie_detail">
                                    <div class="main-left" style="text-align: center ">                                       
                                        <img id="selected-image" src="./Assets/Image/Movies_Image/og-image.jpg"
                                             alt="CHUA CO HINH ANH">
                                        <hr>                            
                                    </div>                          
                                    <div class="main-right" style="padding:30px 30px 30px 90px ">
                                        <h2> 
                                            <label for="date" style="margin-right:30px">Lên Lịch</label> 
                                            <input type="date" id="date" name="setupDate" style="padding : 12px ; border-radius: 5px ;" required>
                                        </h2>
                                        <h3 class="checkk">Kiểm Tra</button>
                                            <i style="color: green;
                                               font-size: 30px;
                                               left: -352%;
                                               top: 272%;
                                               display: none;
                                               position: absolute;" class="fa-solid fa-circle-check showSuccess"></i>
                                            <h5 style="margin-top: 32px ; display :inline-block ;border-radius: 5px;padding: 4px;" class="prepareDoing">                                    
                                            </h5>                                                                                                                                                                                                      
                                            <button onclick="handleSchedulesId()" type="submit" class="AddMovies-button" style="pointer-events:none;opacity: 0.5;color:black; background-color: #169b6b ; border: none;margin: 88px 0 0 222px ;width: 150px; height: 40px; margin: 0;left: 63%;top: 65%;position: absolute;">
                                                Lên Lịch
                                            </button>
                                    </div>
                                    <hr><!-- comment -->
                                </div>
                            </div>
                            <!-- Content Row -->
                        </div>
                    </form>
                    <!-- /.container-fluid -->
                </div>
                <!-- End of Main Content -->
                <!-- Footer -->
                <footer class="sticky-footer bg-white">
                    <div class="container my-auto">
                        <div class="copyright text-center my-auto">
                        </div>
                    </div>
                </footer>
                <!-- End of Footer -->
            </div>
            <!-- End of Content Wrapper -->
        </div>
        <script>
            var dateInput = document.getElementById("date");
            var text = document.querySelector('.prepareDoing');
            var selectedDates = new Set(); // Sử dụng Set thay vì mảng
            var button = document.querySelector('.AddMovies-button');
            var check = document.querySelector('.showSuccess');
            var lastInput;
            var buttonCheck = document.querySelector('.checkk');
            console.log(buttonCheck);

            function showWarning(message) {
                button.style.opacity = 0.5;
                button.style.pointerEvents = "none";
                check.style.display = "none";
                text.style.display = "inline-block";
                text.innerText = "Warning : " + message;
                text.style.color = "black";
                text.style.backgroundColor = "yellow";
            }

            function showSuccess() {
                check.style.display = "block";
                text.style.display = "none";
                button.style.opacity = 1;
                button.style.pointerEvents = "auto";
            }

            function isFutureDate(date) {
                var currentDate = new Date();
                return date > currentDate;
            }

            function isDuplicateDate(date) {
                return selectedDates.has(date.toDateString());
            }

            function handleSchedulesId() {
                var url = "/CINEMA/SchedulesManagement?id=" + dateInput;
                // Chuyển hướng đến trang /seat với các thông tin đã chọn
                window.location.href = url;
            }

//            buttonCheck.addEventListener("click", () => {
//                var selectedDate = new Date(dateInput.value);
//                selectedDates.clear();
//                console.log("Selected Date: " + selectedDate);
//                console.log("List Date : " + selectedDates);
//
//                if (selectedDate.toDateString() === lastInput) {
//                    showWarning("Ngày này đã được lên lịch chiếu trước đó, vui lòng chọn ngày khác !!!");
//                } else if (!isFutureDate(selectedDate)) {
//                    showWarning("Vui lòng chỉ chọn ngày trong tương lai để lên lịch !!!");
//                } else if (isDuplicateDate(selectedDate)) {
//                    showWarning("Ngày này đã được lên lịch chiếu trước đó, vui lòng chọn ngày khác !!!");
//                } else {
//                    lastInput = selectedDate.toDateString();
//                    showSuccess();
//                    selectedDates.add(selectedDate.toDateString());
//                }
//            });

            // Lưu ngày vào cookie
            function setCookie(name, value, days) {
                var expires = "";
                if (days) {
                    var date = new Date();
                    date.setTime(date.getTime() + days * 24 * 60 * 60 * 1000);
                    expires = "; expires=" + date.toUTCString();
                }
                document.cookie = name + "=" + value + expires + "; path=/";
            }

            // Đọc giá trị cookie
            function getCookie(name) {
                var nameEQ = name + "=";
                var cookies = document.cookie.split(';');
                for (var i = 0; i < cookies.length; i++) {
                    var cookie = cookies[i];
                    while (cookie.charAt(0) == ' ') {
                        cookie = cookie.substring(1, cookie.length);
                    }
                    if (cookie.indexOf(nameEQ) == 0) {
                        return cookie.substring(nameEQ.length, cookie.length);
                    }
                }
                return null;
            }

// Kiểm tra và hiển thị cảnh báo
            function checkAndShowWarning() {
                var selectedDate = new Date(dateInput.value);
                // Lấy giá trị cookie trước đó
                var selectedDatesCookie = getCookie("selectedDates");
                // Chuyển giá trị cookie thành mảng
                var selectedDatesArray = selectedDatesCookie ? selectedDatesCookie.split(",") : [];
                if (selectedDatesArray.includes(selectedDate.toDateString())) {
                    showWarning("Ngày này đã được chọn trước đó, vui lòng chọn ngày khác !!!");
                } else if (!isFutureDate(selectedDate)) {
                    showWarning("Vui lòng chỉ chọn ngày trong tương lai để lên lịch !!!");
                } else {
                    // Nếu ngày hợp lệ, thêm vào mảng và cập nhật cookie
                    selectedDatesArray.push(selectedDate.toDateString());
                    setCookie("selectedDates", selectedDatesArray.join(","), 30); // Cookie hợp lệ trong 30 ngày

                    // Hiển thị thông báo thành công
                    lastInput = selectedDate.toDateString();
                    showSuccess();
                    selectedDates.add(lastInput);
                }
            }
            // Sự kiện nhấn nút kiểm tra
            buttonCheck.addEventListener("click", checkAndShowWarning);

        </script>

    </body>
</html>
