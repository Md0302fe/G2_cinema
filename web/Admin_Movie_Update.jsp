<%-- 
    Document   : AddMovie
    Created on : Feb 27, 2024, 11:47:04 AM
    Author     : MinhDuc
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
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
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/sweetalert2@11">

        <title>Edit Movie</title>
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
                    <c:set var="m" value="${requestScope.item}"/>
                    <c:set var="id" value="${requestScope.id}"/>
                    <form action="UpdateMovie" method="post" enctype="multipart/form-data">
                        <div class="container-fluid">
                            <!-- Page Heading -->
                            <h1 class="h3 mb-2 text-gray-800">Chỉnh sửa phim</h1>
                            <div class="main_content1 font-semibold">
                                <div class="movie_detail">
                                    <div class="main-left">
                                        <div class="select-Image">
                                            <label style="font-weight:800" >Chọn ảnh</label>
                                            <input id="imageInput" class="select-img" type="file" accept="image/*" name="movie_image" required>
                                            <!-- <i class="fa-solid fa-hand-pointer icon"></i> -->
                                        </div>
                                        <img id="selected-image" src="./Assets/Image/Movie_Image_Vip/${m.movie_img}"
                                             alt="CHUA CO HINH ANH">
                                        <hr>                           
                                        <div class="select-Image">
                                            <label style="font-weight: 800" >Chọn trailer</label>
                                            <input id="imageInput" class="select-img" type="file" accept="image/*" name="movie_image" required>
                                            <label style="font-weight: 800" >Thêm đường dẫn</label>
                                            <input class="select-trailer" type="text" name="trailer_link" required>
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
                                            <div class="form-Name form">
                                                <label for="Movie_Name" style="padding-top: 2px;"><span>Nhập tên
                                                        phim</span></label>
                                                <input class="NameOfMovie" value="${m.name}" type="text" id="Movie_Name" name="Movie_Name"
                                                       placeholder="Nhập Tên Phim ..." required>
                                            </div>
                                        </div>
                                        <div class="movie_time">
                                            <div class="duration">
                                                <p class="movie_minute">
                                                    <i class="fa-regular fa-clock">
                                                    </i>
                                                    <label for="">Thời lượng</label>
                                                    <input value="${m.duration}" type="number" placeholder="........"
                                                           style="padding: 0 12px; margin-left: 4px; width: 82px" required="" name="Duration">
                                                    <span style="margin-left: 4px;">Phút</span>
                                                </p>
                                            </div>
                                            <div class="releaseDate">
                                                <p class="movie_calendar">
                                                    <label for="release">Ngày khởi chiếu</label>
                                                    <input value="${m.release_date}" type="date" id="release" style="margin-left: 4px" required name="releaseDate">
                                                </p>
                                            </div>
                                            <div class="rate">
                                                <p class="movie_point">
                                                    <i class="fa-solid fa-star"></i>
                                                    <label for="birthday">Rate</label>
                                                    <input value="${m.rate}" type="text" id="birthday" style="margin-left: 4px; padding-left: 16px;" size="3"
                                                           placeholder="vote" name="Rate" required="">
                                                </p>
                                            </div>
                                        </div>
                                        <div class="movie_timeV2">
                                            <div class="duration flex-0_2">
                                                <p class="movie_minute" style="margin-bottom: 32px ; margin-left : 97px" >
                                                    <select name="National" id="countrySelect" style="padding: 4px;" required="">
                                                        <option value="0" disabled selected>Chọn quốc gia</option>
                                                        <option value="Việt Nam" ${requestScope.item.national == 'Việt Nam' ? 'selected' : ''}>Việt Nam</option>
                                                        <option value="Hoa Kỳ" ${requestScope.item.national == 'Hoa Kỳ' ? 'selected' : ''}>Hoa Kỳ</option>
                                                        <option value="Trung Quốc" ${requestScope.item.national == 'Trung Quốc' ? 'selected' : ''}>Trung Quốc</option>
                                                        <option value="Hàn Quốc" ${requestScope.item.national == 'Hàn Quốc' ? 'selected' : ''}>Hàn Quốc</option>
                                                        <option value="Nhật Bản" ${requestScope.item.national == 'Nhật Bản' ? 'selected' : ''}>Nhật Bản</option>
                                                        <option value="Vương Quốc Anh" ${requestScope.item.national == 'Vương Quốc Anh' ? 'selected' : ''}>Vương Quốc Anh</option>
                                                        <option value="Pháp" ${requestScope.item.national == 'Pháp' ? 'selected' : ''}>Pháp</option>
                                                        <option value="Đức" ${requestScope.item.national == 'Đức' ? 'selected' : ''}>Đức</option>
                                                    </select>
                                                </p>
                                            </div>
                                            <div class="releaseDates ">
                                                <div class="duration ">
                                                    <p class="movie_minute v2">
                                                        <label for="generalSelected" style="margin-right: 32px">Thể Loại</label>
                                                        <input value="${m.list_category}" type="text" id="generalSelected" size="55"
                                                               placeholder=" hành động , kinh dị , giật gân , tình cảm , hài hước ..."
                                                               style="padding : 2px 0 0 12px;" required="" name="Categorys">
                                                    </p>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="boxDerector">
                                            <label for="" style="margin-right: 32px">Đạo Diễn</label>
                                            <input value="${m.director}" type="text" placeholder="Tên đạo diễn ... " required="" name="Director">
                                        </div>
                                        <div class="boxDerector">
                                            <label style="margin-right: 16px" >Diễn Viên</label>
                                            <input value="${m.actors}" type="text" placeholder="Tên Các diễn viên ... " size="65"
                                                   style="margin-left: 12px;" required="" name="Stars">
                                            <input type="hidden" name="id" value="${id}"/>
                                        </div>
                                        <div class="boxDerector">
                                            <label>Ngôn Ngữ</label>
                                            <input value="${m.languages}" type="text" placeholder="Ngôn ngữ : Tiếng anh - Phụ đề Tiếng việt ... "
                                                   size="65" style="margin-left: 12px;" required="" name="Language">
                                        </div>
                                        <div class="boxDerectors V2" style="display: flex; align-items: center;">
                                            <label style="margin-right: 1.7rem; ">Mô Tả Nội Dung</label>
                                            <textarea type="text" placeholder="" size="95" name="Describel" rows="4" cols="60" style="resize: none">${m.description}</textarea>
                                        </div>
                                        <button type="submit" class="btn btn-success AddMovies-button px-5">Sửa</button>
                                    </div>
                                </div>
                            </div>
                            <!-- Content Row -->
                        </div>                       
                    </form>
                    <!-- /.container-fluid -->
                </div>
                <footer class="sticky-footer bg-white">
                    <div class="container my-auto">
                        <div class="copyright text-center my-auto">                           
                        </div>
                    </div>
                </footer>
                <!-- End of Main Content -->
            </div>
            <!-- End of Content Wrapper -->
        </div>  
        <script>
            document.addEventListener('DOMContentLoaded', function () {
                // Add an event listener to the form submit button
                document.querySelector('.submit-button').addEventListener('click', function (event) {
                    console.log('Submit button clicked!'); // Check if this log appears
                    var imageInput = document.getElementById('imageInput');
                    var trailerInput = document.querySelector('.select-trailer');

                    // Check if file inputs have values
                    if (imageInput.files.length === 0 || trailerInput.files.length === 0) {
                        // If files are not selected, prevent form submission and show an error
                        event.preventDefault();
                        Swal.fire({
                            title: 'Lỗi',
                            text: 'Xin hãy chọn ảnh bìa và ảnh cho trailer của phim',
                            icon: 'error'
                        });
                    } else {
                        document.forms[0].submit();
                    }
                });
            });



        </script>



        <script src="https://cdn.jsdelivr.net/npm/sweetalert2@11"></script>
    </body>
</html>
