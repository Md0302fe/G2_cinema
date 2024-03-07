/* 
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/JavaScript.js to edit this template
 */


//Chọn vị trí 
document.addEventListener('DOMContentLoaded', function () {
    var locationArrow = document.getElementById('locationArrow');
    var locationText = document.getElementById('locationText');
    var locationList = document.querySelector('.locationlist');
    var locationSelected = false;

    locationList.style.display = 'none';

    locationText.addEventListener('click', function (event) {
        if (locationSelected) {
            locationList.style.display = 'block';
            locationText.style.border = '1px solid #ccc';
            locationText.style.backgroundColor = '#003077';
            locationText.style.color = '#ffffff';
            locationText.style.padding = '5px';
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



//Chọn Suất
document.addEventListener('DOMContentLoaded', function () {
    var selectedDate = null; // Biến để lưu trữ ngày đã chọn
    var selectedTime = null; // Biến để lưu trữ giờ đã chọn
    var showtimeArrow = document.getElementById('showtimeArrow');
    var showtimeText = document.getElementById('selectedShowtimeInfo');
    var showtimeList = document.querySelector('.showtime-info');
    var showtimeSelected = false;

    showtimeList.style.display = 'none';

    showtimeText.addEventListener('click', function (event) {
        if (showtimeSelected) {
            showtimeList.style.display = 'block';
            showtimeText.style.border = 'none'; 
            showtimeSelected = false;
        } else {
            showtimeText.style.border = 'none';
            showtimeSelected = true;
        }
    });

    showtimeArrow.addEventListener('click', function () {
        if (showtimeSelected) {
            showtimeList.style.display = 'none';
            showtimeText.style.border = 'none'; 
            showtimeSelected = false;
        } else {
            showtimeList.style.display = 'block';
            showtimeText.style.border = 'none';
            showtimeSelected = true;
        }
    });

    // Thêm sự kiện click để cập nhật ngày hoặc giờ đã chọn sang phần suất
    var dateSpans = document.querySelectorAll('.date span');
    var timeSpans = document.querySelectorAll('.time-item span');

    dateSpans.forEach(function (dateSpan) {
        dateSpan.addEventListener('click', function () {
            selectedDate = dateSpan.innerText; // Lưu ngày đã chọn
            updateShowtime(); // Gọi hàm cập nhật phần suất
            dateSpans.forEach(function(span) {
                span.classList.remove('selected');
            });
            dateSpan.classList.add('selected');
        });
    });

    timeSpans.forEach(function (timeSpan) {
        timeSpan.addEventListener('click', function () {
            selectedTime = timeSpan.innerText; // Lưu giờ đã chọn
            updateShowtime(); // Gọi hàm cập nhật phần suất
            timeSpans.forEach(function(span) {
                span.classList.remove('selected');
            });
            timeSpan.classList.add('selected');
        });
    });

    function updateShowtime() {
        var galaxyShowtime = document.getElementById('galaxyShowtime');
        if (selectedDate !== null && selectedTime !== null) { // Chỉ cập nhật nếu đã chọn cả ngày và giờ
            galaxyShowtime.textContent = selectedTime + ' - ' + selectedDate;
        }
    }
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















