/* 
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/JavaScript.js to edit this template
 */


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

    // Thêm console.log để kiểm tra khi người dùng chọn vị trí
    var locationItems = document.querySelectorAll('.location-item');

    locationItems.forEach(function (item) {
        item.addEventListener('click', function () {
            var selectedLocation = item.querySelector('span').innerText;
            console.log("Selected location: ", selectedLocation); // Thêm console.log để hiển thị thông tin vị trí đã chọn
            // Update Galaxy section with selected location
            var galaxyLocation = document.getElementById('galaxyLocation');
            galaxyLocation.textContent = selectedLocation;
        });
    });
});





/////Chọn suất 

document.addEventListener('DOMContentLoaded', function () {
    var showtimeArrow = document.getElementById('showtimeArrow');
    var showtimeInfo = document.getElementById('showtimeInfo');
    var selectedShowtimeInfo = document.getElementById('selectedShowtimeInfo');
    var showtimeItems = document.querySelectorAll('.showtime-item');
    var showtimeSelected = false;

    showtimeInfo.style.display = 'none';

    showtimeArrow.addEventListener('click', function () {
        if (showtimeSelected) {
            showtimeInfo.style.display = 'block';
            selectedShowtimeInfo.style.display = 'none';
            showtimeSelected = false;
        } else {
            showtimeInfo.style.display = 'none';
            selectedShowtimeInfo.style.display = 'block';
            showtimeSelected = true;
        }
        showtimeItems.forEach(function (showtimeItem) {
showtimeItem.style.display = 'block';
        });
    });

    showtimeItems.forEach(function (item) {
        item.addEventListener('click', function () {
            var selectedShowtime = item.textContent;
            selectedShowtimeInfo.textContent = selectedShowtime;
            showtimeItems.forEach(function (showtimeItem) {
                showtimeItem.style.display = 'none';
            });
            selectedShowtimeInfo.style.display = 'block';
            showtimeSelected = false;

            // Update Galaxy section with selected showtime
            var galaxyShowtime = document.getElementById('galaxyShowtime');
            galaxyShowtime.textContent = selectedShowtime;
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
            movieInfo.style.display = 'none';
            selectedMovieInfo.style.display = 'block';

            var movieName = item.querySelector('span').innerText;
            var movieImageSrc = item.querySelector('img').src;

            selectedMovieNameInfo.innerText = movieName;
            selectedMovieImage.src = movieImageSrc;

            // Update Galaxy section with selected movie title and image
            var galaxyMovieTitle = document.getElementById('galaxyMovieTitle');
            galaxyMovieTitle.textContent = movieName;

            var galaxyMovieImage = document.getElementById('galaxyMovieImage');
            galaxyMovieImage.src = movieImageSrc;
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