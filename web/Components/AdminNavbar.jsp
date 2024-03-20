<%-- 
    Document   : AdminNavbar
    Created on : Feb 28, 2024, 6:31:48 PM
    Author     : MinhDuc
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <ul class="navbar-nav bg-gradient-primary sidebar sidebar-dark accordion" id="accordionSidebar">
            <!-- Sidebar - Brand -->
            <a class="sidebar-brand d-flex align-items-center justify-content-center" href="home" style=" margin: 26px 0px 10px 0;">              
                <img style="width: 120px" src="./Assets/Image/Header_Image/logo.png" alt="logo">
            </a>
            <li class="nav-item">
                <a style="margin-top: 16px" class="nav-link" href="admin">
                    <i class="fas fa-fw fa-chart-area"></i>
                    <span>Tổng quan</span></a>
            </li>
            <!-- Divider -->

            <hr class="sidebar-divider" style="margin: 16px 0px">
            <b style="color : #ffd4d4; margin-left: 28px; margin-bottom: 10px">Quản lý phim</b>
            <!-- Heading -->
            <div class="sidebar-heading">
            </div>
            <!-- Nav Item - Charts -->
            <li class="nav-item">
                <a class="nav-link" href="addMovie">
                    <i class="fas fa-fw fa-chart-area"></i>
                    <span>Thêm phim</span></a>
            </li>
            <li class="nav-item ">
                <a class="nav-link" href="ListMovie">
                    <i class="fas fa-fw fa-chart-area"></i>
                    <span>Danh sách phim</span></a>
            </li>        
            <!-- Divider -->

            <hr class="sidebar-divider" style="margin: 16px 0px;">
            <b style="color : #ffd4d4; margin-left: 28px; margin-bottom: 20px;">Quản lý lịch chiếu</b>
            <li class="nav-item ">
                <a class="nav-link" href="setupschedules">
                    <i class="fas fa-fw fa-chart-area"></i>
                    <span>Lên lịch chiếu</span></a>
            </li>
            
            <li class="nav-item ">
                <a class="nav-link" href="Admin_ShowDate">
                    <i class="fas fa-fw fa-chart-area"></i>
                    <span>Danh sách lịch chiếu</span></a>
            </li>   

            <!-- Divider -->
            <hr class="sidebar-divider d-none d-md-block">
            <!-- Sidebar Toggler (Sidebar) -->
            <div class="text-center d-none d-md-inline">
                <button class="rounded-circle border-0" id="sidebarToggle"></button>
            </div>
        </ul>

        <script>
            function toggleDropdown(category) {
                var dropdown = document.getElementById(category + 'Dropdown');
                var parentLi = dropdown.parentNode;

                // Kiểm tra trạng thái hiển thị của dropdown
                var isDropdownVisible = dropdown.style.display === 'block';

                // Đóng tất cả các dropdown
                closeAllDropdowns();

                // Mở hoặc đóng dropdown tùy thuộc vào trạng thái trước đó
                dropdown.style.display = isDropdownVisible ? 'none' : 'block';

                // Thêm hoặc xóa lớp 'highlight' tùy thuộc vào trạng thái hiển thị của dropdown
                parentLi.classList.toggle('highlight', dropdown.style.display === 'block');

                // Chọn thẻ <a> con đầu tiên của thẻ <li>
                var firstAnchor = parentLi.querySelector('a');

                // Đặt màu của thẻ đóng lại thành màu mặc định
                if (dropdown.style.display === 'none' || dropdown.style.display === '') {
                    firstAnchor.style.color = '#000';
                } else {
                    firstAnchor.style.color = '#fd841f';
                }
            }
        </script>
    </body>
</html>
