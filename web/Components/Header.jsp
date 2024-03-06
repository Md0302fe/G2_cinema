<%-- 
    Document   : Header
    Created on : Feb 20, 2024, 11:01:27 AM
    Author     : ADMIN
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<header>
    <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Nunito Sans">
    <nav id="topnav">
        <ul class="nav-container">
            <li class="nav__logo">
                <a href="home">
                    <img src="./Assets/Image/Header_Image/logo.png" alt="logo">
                </a>
            </li>
            <li class="nav__navigation">
                <ul class="flex">
                    <li class="nav__movie">
                        <div class="rel">
                            <a href="#">Phim <i class="fa-solid fa-angle-down"></i></a>
                            <ul class="abs b-shadow nav__movie--bgc">
                                <li>
                                    <div><a href="#">PHIM ĐANG CHIẾU</a></div>
                                    <ul class="flex movie-demo jca">
                                        <c:forEach items="${listMovie}" var="m" begin="0" end="3">
                                            <li class="tc">
                                                <a href="MovieDetailServlet?id=${m.id}">
                                                    <img class="movie-showing" src="./Assets/Image/Movie_Image_Vip/${m.movie_img}" alt="movie 1" />
                                                    <h5>${m.name}</h5>
                                                </a>
                                            </li>
                                        </c:forEach>                                                  
                                    </ul>
                                </li>
                                <li>
                                    <div><a href="#">PHIM SẮP CHIẾU</a></div>
                                    <ul class="flex movie-demo jca">
                                        <c:forEach items="${listMovie}" var="m" begin="0" end="3">
                                            <li class="tc">
                                                <a href="MovieDetailServlet?id=${m.id}">
                                                    <img class="movie-showing" src="./Assets/Image/Movie_Image_Vip/${m.movie_img}" alt="movie 1" />
                                                    <h5>${m.name}</h5>
                                                </a>
                                            </li>
                                        </c:forEach>                                                  
                                    </ul>
                                </li>
                            </ul>
                        </div>
                    </li>
                    <li class="movie__type">
                        <div class="rel">
                            <a href="#">Góc điện ảnh <i class="fa-solid fa-angle-down"></i></a>
                            <ul class="movie__type--menu b-shadow tc abs">
                                <li><a href="#">Thể loại phim</a></li>
                                <li><a href="#">Diễn viên</a></li>
                                <li><a href="#">Đạo diễn</a></li>
                                <li><a href="#">Bình luận phim</a></li>
                                <li><a href="#">Blog điện ảnh</a></li>
                            </ul>
                        </div>
                    </li>
                    <li class="movie__event">
                        <div class="rel">
                            <a href="#">Sự kiện <i class="fa-solid fa-angle-down"></i></a>
                            <ul class="movie__event--menu b-shadow tc abs">
                                <li><a href="#">Ưu đãi</a></li>
                                <li><a href="#">Phim hay tháng</a></li>
                            </ul>
                        </div>
                    </li>
                    <li class="movie__cinema">
                        <div class="rel">
                            <a href="#">Rạp <i class="fa-solid fa-angle-down"></i></a>
                            <ul class="movie__cinema--menu cinema b-shadow tc abs">
                                <li><a href="#">Tên rạp</a></li>                              
                            </ul>
                        </div>
                    </li>
                </ul>
            </li>
            <li class="nav__auth flex">
                <div class="search-container">
                    <div class="rel">
                        <a id="searchIcon" class="search-icon">
                            <i class="fa-solid fa-magnifying-glass"></i>
                        </a>
                    </div>
                    <input id="searchInput" class="search-box abs b-shadow" type="text" placeholder="Search.."
                           onfocus="expandInput()" onblur="shrinkInput()">
                </div>

                <c:if test="${sessionScope.account==null}">
                    <div class="nav__user">
                        <a class="nav__login--btn" href="login"> <i class="fa-regular fa-user"></i> Đăng nhập</a>
                    </div>
                </c:if>
                <c:if test="${sessionScope.account!=null}">
                    <div class="nav__user">
                        <a class="nav__login--btn" style="text-decoration: none" href="test"><i style="font-size: 18px" class="fa-regular fa-user"></i> ${sessionScope.account.fullName}</a>
                    </div>
                </c:if>


                <div class="nav__mobile">
                    <i onclick="toggleNav()" class="fa-solid fa-bars"></i>
                </div>
            </li>
        </ul>

    </nav>
    <div class="mobile__nav">
        <div class="close-btn" onclick="toggleNav()">
            <i class="fa-solid fa-xmark"></i>
        </div>
        <div class="mobile-search">
            <i class="fa-solid fa-magnifying-glass" onclick="search()"></i>
            <input id="search-input-mobile" placeholder="Tìm kiếm.." type="text">
        </div>
        <div class="mobile__navigation">
            <ul>
                <li class="mobile__movie" onclick="toggleDropdown('movie')">
                    <a class="pointer">Phim</a>
                    <i class="fa-solid fa-angle-down"></i>
                    <ul class="mobile__movie--container" id="movieDropdown">
                        <li><a href="#">Phim đang chiếu</a></li>
                        <li><a href="#">Phim sắp chiếu</a></li>
                    </ul>
                </li>
                <li class="mobile__news" onclick="toggleDropdown('news')">
                    <a href="#">Góc điện ảnh</a>
                    <i class="fa-solid fa-angle-down"></i>
                    <ul class="mobile__movie--container" id="newsDropdown">
                        <li><a class="pointer">Thể loại</a></li>
                        <li><a href="#">Diễn viên</a></li>
                        <li><a href="#">Đạo diễn</a></li>
                        <li><a href="#">Bình luận phim</a></li>
                        <li><a href="#">blog điện ảnh</a></li>
                    </ul>
                </li>
                <li>
                    <a href="#">Phim hay tháng</a>
                </li>
            </ul>
        </div>
    </div>
</header>

<div class="modal"></div>
<script src="Assets/JS/header.js" type="text/javascript"></script>
