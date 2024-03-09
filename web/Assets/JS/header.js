var searchBox = document.querySelector('.search-box');

document.getElementById('searchIcon').addEventListener('click', function () {
    var searchInput = document.getElementById('searchInput');
    searchInput.style.display = (searchInput.style.display === 'none' || searchInput.style.display === '') ? 'block' : 'none';
});

document.addEventListener('click', function (event) {
    var searchContainer = document.querySelector('.search-container');
    var isClickInside = searchContainer.contains(event.target);

    if (!isClickInside) {
        var searchInput = document.getElementById('searchInput');
        searchInput.style.display = 'none';
    }
});



// search box
function expandInput() {
    document.getElementById("searchInput").style.width = "300px"; // Kích thước mới khi được mở rộng
}

function shrinkInput() {
    document.getElementById("searchInput").style.width = "150px"; // Kích thước mới khi được thu nhỏ
}

//Mobile nav
function toggleNav() {
    var navbar = document.querySelector('.mobile__nav');
    var blur = document.querySelector('.modal');
    var currentState = getComputedStyle(navbar).right;

    if (currentState === '0px') {
        navbar.style.right = '-346px';
        blur.style.display = 'none';
    } else {
        navbar.style.right = '0';
        blur.style.display = 'block';
    }
}

// Lắng nghe sự kiện click trên phần nền của trang
document.addEventListener('click', function (event) {
    var navbar = document.querySelector('.mobile__nav');
    var currentState = getComputedStyle(navbar).right;

    if (currentState === '0px') {
        toggleNav(event);
    }
});
// Ngăn chặn sự kiện click từ .mobile__nav truyền xuống các phần tử khác
document.querySelector('.mobile__nav').addEventListener('click', function (event) {
    event.stopPropagation();
});


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

function closeAllDropdowns() {
    var allDropdowns = document.querySelectorAll('.mobile__movie--container');
    allDropdowns.forEach(function (dropdown) {
        dropdown.style.display = 'none';
        dropdown.parentNode.classList.remove('highlight');

        // Đặt màu của thẻ đóng lại thành màu mặc định
        var firstAnchor = dropdown.parentNode.querySelector('a');
        firstAnchor.style.color = '#000';
    });
}


//Hàm tìm kiếm
function search() {
    var searchTerm = document.getElementById("search-input-mobile").value;
    // Thực hiện xử lý tìm kiếm ở đây, ví dụ: chuyển hướng đến trang tìm kiếm
    // window.location.href = "/search?q=" + encodeURIComponent(searchTerm);
    console.log(searchTerm)
}

document.getElementById("searchInput").addEventListener("keyup", function (event) {
    if (event.key === "Enter") {
        search();
    }
});
document.getElementById("search-input-mobile").addEventListener("keyup", function (event) {
    if (event.key === "Enter") {
        search();
    }
});