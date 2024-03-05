<%-- 
    Document   : Header
    Created on : Feb 20, 2024, 11:01:27 AM
    Author     : ADMIN
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<header>
    <nav id="topnav">
        <ul class="nav-container">
            <li class="nav__logo">
                <a href="#">
                    <img src="./Assets/Image/Header_Image/logo.png" alt="">
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
                                        <li class="tc">
                                            <a href="#">
                                                <img src="./Assets/Image/Header_Image/movie-1.jpg" alt="movie 1" />
                                                <h5>Movie Name</h5>
                                            </a>
                                        </li>
                                        <li class="tc">
                                            <a href="#">
                                                <img src="./Assets/Image/Header_Image/movie-1.jpg" alt="movie 1" />
                                                <h5>Movie Name</h5>
                                            </a>
                                        </li>
                                        <li class="tc">
                                            <a href="#">
                                                <img src="./Assets/Image/Header_Image/movie-1.jpg" alt="movie 1" />
                                                <h5>Movie Name</h5>
                                            </a>
                                        </li>
                                        <li class="tc">
                                            <a href="#">
                                                <img src="./Assets/Image/Header_Image/movie-1.jpg" alt="movie 1" />
                                                <h5>Movie Name</h5>
                                            </a>
                                        </li>
                                    </ul>
                                </li>
                                <li>
                                    <div><a href="#">PHIM SẮP CHIẾU</a></div>
                                    <ul class="flex movie-demo jca">
                                        <li class="tc">
                                            <a href="#">
                                                <img src="./Assets/Image/Header_Image/movie-1.jpg" alt="movie 1" />
                                                <h5>Movie Name</h5>
                                            </a>
                                        </li>
                                        <li class="tc">
                                            <a href="#">
                                                <img src="./Assets/Image/Header_Image/movie-1.jpg" alt="movie 1" />
                                                <h5>Movie Name</h5>
                                            </a>
                                        </li>
                                        <li class="tc">
                                            <a href="#">
                                                <img src="./Assets/Image/Header_Image/movie-1.jpg" alt="movie 1" />
                                                <h5>Movie Name</h5>
                                            </a>
                                        </li>
                                        <li class="tc">
                                            <a href="#">
                                                <img src="./Assets/Image/Header_Image/movie-1.jpg" alt="movie 1" />
                                                <h5>Movie Name</h5>
                                            </a>
                                        </li>
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
                                <li><a href="#">Tên rạp</a></li>
                                <li><a href="#">Tên rạp</a></li>
                                <li><a href="#">Tên rạp</a></li>
                                <li><a href="#">Tên rạp</a></li>
                                <li><a href="#">Tên rạp</a></li>
                                <li><a href="#">Tên rạp</a></li>
                                <li><a href="#">Tên rạp</a></li>
                                <li><a href="#">Tên rạp</a></li>
                                <li><a href="#">Tên rạp</a></li>
                                <li><a href="#">Tên rạp</a></li>
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
                    <a class="nav__login--btn" href="login" > <i class="fa-regular fa-user"></i> Đăng nhập</a>
                </div>
            </c:if>
                
            <c:if test="${sessionScope.account!=null}">
                <div class="nav__user">
                    <a class="nav__login--btn" style="text-decoration: none" href="ProfileSevelet"><i style="font-size: 18px" class="fa-regular fa-user"></i> ${sessionScope.account.fullName}</a>
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
<!--<div class="login-modal">
    <div class="login-container">
        <div class="form-container">
            <div class="form-close-btn">
                <i class="fa-solid fa-xmark"></i>
            </div>
            <img src="./Assets/Image/Header_Image/login.svg" alt="">
            <div class="form-btn">
                <span onclick="login()">Login</span>
                <span onclick="register()">Register</span>
                <hr id="Indicator">
            </div>
            <form id="LoginForm" action="login" method="post">
                <input class="input-form" type="email" required placeholder="Email" name="username">
                <div class="password_show_hide">
                    <input class="input-form" type="password" required placeholder="Password" name="password" id="password">
                    <i class="fa-solid fa-eye-slash password_hide" onclick="togglePassword('password', this)"></i>
                </div>

                <div class="rememberme">
                    <div class="remenberme-divcon">
                        <input id="checkremenber" class="rememberme-input" type="checkbox" name="remember" value="ON" />
                        <label class="remember-label" style="margin-left: 15px; cursor: pointer" for="checkremenber">Remember
                            me</label>
                    </div>
                </div>
                <button type="submit" class="btn">Login</button>
                <a class="forget__btn" href="#">Forget Password?</a>
            </form>

            <form id="RegForm" action="register" method="post">
                <input class="input-form" required type="text" placeholder="Full name" name="fullName">
                <input class="input-form" required type="number" placeholder="Phone number" name="phone">
                <input class="input-form" required type="email" placeholder="Email" name="userName">
                <div class="password_show_hide">
                    <input class="input-form" required type="password" placeholder="Password" name="password" id="regPassword">
                    <i class="fa-solid fa-eye-slash password_hide" onclick="togglePassword('regPassword', this)"></i>
                </div>
                <div class="password_show_hide">
                    <input class="input-form" required type="password" placeholder="Re-enter your Password" name="rePassword"
                           id="rePassword">
                    <i class="fa-solid fa-eye-slash password_hide" onclick="togglePassword('rePassword', this)"></i>
                </div>
                <button type="submit" class="btn">Register</button>
            </form>
        </div>
    </div>
    <div class="login-otp">

    </div>
</div>-->
<script src="Assets/JS/header.js" type="text/javascript"></script>
