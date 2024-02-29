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
                            <h1 style="margin-left:100px">SET UP SCHEDULES</h1>
                            <div class="main_content1 font-semibold">
                                <h1 style="margin-left:240px ; margin-bottom: 24px" >FOR CINEMA GG</h1>
                                <div class="movie_detail">
                                    <div class="main-left" style="text-align: center ">                                       
                                        <img id="selected-image" src="./Assets/Image/Movies_Image/og-image.jpg"
                                             alt="CHUA CO HINH ANH">
                                        <hr>                            
                                    </div>                          
                                    <div class="main-right" style="padding:30px 30px 30px 90px ">
                                        <h2> 
                                            <label for="date" style="margin-right:30px">Lên Lịch</label>
                                            <input type="date" id="date" name="setupDate" style="padding : 12px ; border-radius: 5px" required>
                                        </h2>
                                        <i style="color: green;
                                           font-size: 30px;
                                           left: 36px;
                                           top: 30px;
                                           display: none;
                                           position: relative;" class="fa-solid fa-circle-check showSuccess"></i>
                                        <h5 style="margin-top: 32px ; display :inline-block ;border-radius: 5px;
                                            padding: 4px;" class="prepareDoing">                                    
                                        </h5>                                                                                                                                                                                                      
                                        <button type="submit" class="AddMovies-button" style="pointer-events:none;opacity: 0.5;color:black; background-color: #169b6b ; border: none;
                                                margin: 88px 0 0 222px ;width: 150px; height: 40px;">
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
                            <span>Copyright &copy; Your Website 2020</span>
                        </div>
                    </div>
                </footer>
                <!-- End of Footer -->
            </div>
            <!-- End of Content Wrapper -->
        </div>
        <script>
            const dateInput = document.getElementById("date");
            var text = document.querySelector('.prepareDoing');
            dateInput.addEventListener("change", () => {
                const selectedDate = new Date(dateInput.value); // khởi tạo đối tượng date = dateInput.value
                const currentDate = new Date(); // lấy giá trị ngày hôm nay                                                    
                // Kiểm tra nếu ngày được chọn là ngày trong quá khứ
                if (selectedDate < currentDate) {
                    text.innerText = "Warning : Vui lòng chỉ chọn ngày trong tương lai để lên lịch !!!";
                    text.style.color = "black";
                    text.style.backgroundColor = "yellow";
                } else {
                    const button = document.querySelector('.AddMovies-button');
                    const check = document.querySelector('.showSuccess');
                    check.style.display = "block";
                    text.innerText = "";
                    button.style.opacity = 1;
                    button.style.pointerEvents = "auto";
                }
            });
        </script>     
    </body>
</html>
