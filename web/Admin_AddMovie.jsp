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
        <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Nunito Sans">
        <title>JSP Page</title>
    </head>
    <body>
        <div id="wrapper">
            <!-- Sidebar -->
            <%@include file="./Components/AdminNavbar.jsp" %> 
            <!-- Content Wrapper -->
            <div id="content-wrapper" class="d-flex flex-column">
                <!-- Main Content --> 
                <div id="content">
                    <%@include file="./Components/AdminHeader.jsp" %>
                    <!----------- ADD MOVIES -------------->
                    <form action="AddMovie" method="post" enctype="multipart/form-data">
                        <div class="container-fluid">
                            <!-- Page Heading -->
                            <h1 class="h3 mb-2 text-gray-800">ADD MOVIE</h1>
                            <div class="main_content1 font-semibold">
                                <div class="movie_detail">
                                    <div class="main-left">
                                        <div class="select-Image">
                                            <label style="font-weight:800" >Chọn ảnh</label>
                                            <input id="imageInput" class="select-img" type="file" accept="image/*" name="movie_image" required>
                                            <!-- <i class="fa-solid fa-hand-pointer icon"></i> -->
                                        </div>
                                        <img id="selected-image" src="./Assets/Image/Movies_Image/default.jpg"
                                             alt="CHUA CO HINH ANH">
                                        <hr>      
                                        <div class="select-Image">
                                            <label style="font-weight: 800" >Chọn trailer</label>
                                            <input id="imageInput" class="select-img" type="file" accept="image/*" name="movie_trailer" required>
                                            <label style="font-weight: 800" >Thêm đường dẫn</label>
                                            <input class="select-trailer" type="text" name="trailer_link" required size="35">
                                            <!-- <i class="fa-solid fa-hand-pointer icon"></i> -->
                                        </div>
                                        <script>
                                            document.getElementById('imageInput').addEventListener('change', function (event) {
                                                var selectedImage = document.getElementById('selected-image');
                                                selectedImage.src = URL.createObjectURL(event.target.files[0]);
                                            });
                                        </script>
                                      
                                    </div>                          
                                    <div class="main-right">
                                        <div class="movie_name">    
                                            <div class="form-Name form" style="position: relative;left: -17px;">
                                                <label for="Movie_Name" style="padding-top: 2px "><span>Nhập tên
                                                        phim</span></label>
                                                <input class="NameOfMovie" type="text" id="Movie_Name" name="Movie_Name"
                                                       placeholder="Nhập Tên Phim ..." required>
                                            </div>
                                        </div>
                                        <div class="movie_time">
                                            <div class="duration">
                                                <p class="movie_minute">
                                                    <i class="fa-regular fa-clock">
                                                    </i>
                                                    <label for="">Thời lượng</label>
                                                    <input type="number" 
                                                           style="padding: 0 12px; margin-left: 4px; width: 82px" required="" name="Duration">
                                                    <span style="margin-left: 4px;">Phút</span>
                                                </p>
                                            </div>
                                            <div class="releaseDate">
                                                <p class="movie_calendar">
                                                    <label for="release">Ngày khởi chiếu</label>
                                                    <input type="date" id="release" style="margin-left: 4px" required name="releaseDate">
                                                </p>
                                            </div>
                                            <div class="rate">
                                                <p class="movie_point" style="margin-left: 5px">
                                                    <i class="fa-solid fa-star"></i>
                                                    <label for="birthday">Rate</label>
                                                    <input type="text" id="birthday" style="margin-left: 4px; padding-left: 19px; padding-right: 6px" size="3"
                                                           placeholder="vote" name="Rate" required="">
                                                </p>
                                            </div>
                                        </div>
                                        <div class="movie_timeV2">
                                            <div class="duration flex-0_2">
                                                <p class="movie_minute" style="margin-bottom: 32px ; margin-left : 97px" >
                                                    <select name="National" id="countrySelect" style="padding: 4px;" required="">
                                                        <option value="0" disabled selected>Chọn quốc gia</option>
                                                        <option value="Việt Nam">Việt Nam</option>
                                                        <option value="Hoa Kỳ">Hoa Kỳ</option>
                                                        <option value="Trung Quốc">Trung Quốc</option>
                                                        <option value="Hàn Quốc">Hàn Quốc</option>
                                                        <option value="Nhật Bản">Nhật Bản</option>
                                                        <option value="Nhật Bản">Thái Lan</option>
                                                        <option value="Nhật Bản">Philippines</option>
                                                        <option value="Vương Quốc Anh">Vương Quốc Anh</option>
                                                        <option value="Pháp">Pháp</option>
                                                        <option value="Đức">Đức</option>
                                                    </select>
                                                </p>
                                            </div>
                                            <div class="releaseDates ">
                                                <div class="duration ">
                                                    <p class="movie_minute v2">
                                                        <label for="generalSelected" style="margin-right: 32px">Thể Loại</label>
                                                        <input type="text" id="generalSelected" size="64.5"
                                                               placeholder=" hành động , kinh dị , giật gân , tình cảm , hài hước ..."
                                                               style="padding : 2px 0 0 12px;" required="" name="Categorys">
                                                    </p>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="boxDerector">
                                            <label for="" style="margin-right: 32px;">Đạo Diễn</label>
                                            <input type="text" placeholder="Tên đạo diễn ... " required="" name="Director" style="padding : 2px 12px">
                                        </div>
                                        <div class="boxDerector">
                                            <label style="margin-right: 16px" >Diễn Viên</label>
                                            <input type="text" placeholder="Tên Các diễn viên ... " size="65"
                                                   style="margin-left: 12px;padding:2px 12px;" required="" name="Stars">
                                        </div>
                                        <div class="boxDerector">
                                            <label>Ngôn Ngữ</label>
                                            <input type="text" placeholder="Ngôn ngữ : Tiếng anh - Phụ đề Tiếng việt ... "
                                                   size="65" style="margin-left: 12px;padding:2px 12px;" required="" name="Language">
                                        </div>
                                        <div class="boxDerectors V2" style="display: flex; align-items: center;">
                                            <label style="margin-right: 1.7rem;"> Mô Tả Nội Dung</label>
                                            <textarea type="text" placeholder="" size="95" name="Describel" rows="4" cols="60" style="resize: none">${m.description}</textarea>
                                          
                                        </div>
                                             <button type="submit" class="AddMovies-button">ADD</button>
                                    </div>
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
    </body>
</html>
