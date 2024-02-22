/* 
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/JavaScript.js to edit this template
 */


//// Chọn Vị trí
document.addEventListener('DOMContentLoaded', function () {
    var locationArrow = document.getElementById('locationArrow');
    var locationText = document.getElementById('locationText');
    var locationList = document.querySelector('.locationlist');
    var locationSelected = false;

    locationList.style.display = 'none';

    locationText.addEventListener('click', function (event) {
        if (locationSelected) {
            locationList.style.display = 'block';
            locationText.style.border = '1px solid ';
            // Loại bỏ đường viền khi vị trí được chọn
            locationSelected = false;
        } else {

            locationText.style.border = 'none';

            locationSelected = true;
        }
    });

    locationArrow.addEventListener('click', function () {
        if (locationSelected) {
            locationList.style.display = 'none';
            locationText.style.border = 'none'; // Loại bỏ đường viền khi vị trí được chọn
            locationSelected = false;
        } else {
            locationList.style.display = 'block';
            locationText.style.border = 'none';

            locationSelected = true;
        }
    });
});



/////Chọn suất 

document.addEventListener('DOMContentLoaded', function () {
    var showtimeArrow = document.getElementById('showtimeArrow');
    var showtimeInfo = document.getElementById('showtimeInfo');
    var selectedShowtimeInfo = document.getElementById('selectedShowtimeInfo');
    var showtimeItems = document.querySelectorAll('.showtime-item');

    // Biến để lưu trạng thái chọn suất
    var showtimeSelected = false;

    // Thêm sự kiện click cho mũi tên chọn suất
    showtimeArrow.addEventListener('click', function () {
        if (showtimeSelected) {
            // Ẩn selectedShowtimeInfo và hiển thị lại showtimeInfo
            showtimeInfo.style.display = 'block';
            selectedShowtimeInfo.style.display = 'none';
            // Đặt lại trạng thái chọn suất
            showtimeSelected = false;
        } else {
            // Hiển thị lại danh sách thời gian và ẩn selectedShowtimeInfo
            showtimeInfo.style.display = 'none';
            selectedShowtimeInfo.style.display = 'block';


            // Đặt trạng thái chọn suất
            showtimeSelected = true;
        }
        // Hiển thị lại tất cả các mục thời gian
        showtimeItems.forEach(function (showtimeItem) {
            showtimeItem.style.display = 'block';
        });
    });

    // Thêm sự kiện click cho từng mục thời gian
    showtimeItems.forEach(function (item) {
        item.addEventListener('click', function () {
            var selectedShowtime = item.textContent;
            selectedShowtimeInfo.textContent = selectedShowtime;
            // Ẩn tất cả các mục thời gian khi chọn một mục
            showtimeItems.forEach(function (showtimeItem) {
                showtimeItem.style.display = 'none';
            });
            // Hiển thị selectedShowtimeInfo
            selectedShowtimeInfo.style.display = 'block';


            // Đặt lại trạng thái chọn suất
            showtimeSelected = false;
        });
    });
});



//Chọn phim

document.addEventListener("DOMContentLoaded", function () {
    // Get the necessary elements
    var movieList = document.getElementById("movieList");
    var movieInfo = document.getElementById("movieInfo");
    var selectedMovieInfo = document.getElementById("selectedMovieInfo");
    var selectedMovieNameInfo = document.getElementById("selectedMovieNameInfo");
    var selectedMovieImage = document.getElementById("selectedMovieImage");
    var movieSelected = false;

    var movieArrow = document.getElementById("movieArrow");
    movieArrow.addEventListener("click", function () {
        // Kiểm tra xem đã chọn phim chưa
        if (movieSelected) {
            // Ẩn selectedMovieInfo và hiển thị movieInfo
            movieInfo.style.display = "block";
            selectedMovieInfo.style.display = "none";
            // Đặt lại trạng thái chọn phim
            movieSelected = false;
        } else {
            // Hiển thị lại danh sách phim và ẩn selectedMovieInfo
            movieInfo.style.display = "block";
            selectedMovieInfo.style.display = "none";
            // Đặt trạng thái chọn phim
            movieSelected = true;
        }
    });

    // Add click event listener to each movie item
    var movieItems = document.querySelectorAll('.movielist .movie-item');
    movieItems.forEach(function (item) {
        item.addEventListener('click', function () {
            // Hide movie-info and show selected movie info
            movieInfo.style.display = 'none';
            selectedMovieInfo.style.display = 'block';

            // Update selected movie name and image
            var movieName = item.querySelector('span').innerText;
            var movieImageSrc = item.querySelector('img').src;

            selectedMovieNameInfo.innerText = movieName;
            selectedMovieImage.src = movieImageSrc;
        });
    });

    // Add click event listener to the back button
    var backButton = document.querySelector('.back-button');
    backButton.addEventListener('click', function () {
        // Show movie-info and hide selected movie info
        movieInfo.style.display = 'block';
        selectedMovieInfo.style.display = 'none';
    });

    // Add click event listener to the continue button (you can customize this button functionality)
    var continueButton = document.querySelector('.continue-button');
    continueButton.addEventListener('click', function () {
        // Add your continue button functionality here
    });
});










