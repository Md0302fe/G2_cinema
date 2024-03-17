/* 
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/JavaScript.js to edit this template
 */
function handleDate(date) {
    var url = "/CINEMA/Admin_ShowDate?id=" + date;
    // Chuyển hướng đến trang /seat với các thông tin đã chọn
    window.location.href = url;
}

document.addEventListener("DOMContentLoaded", function () {
    var cells = document.querySelectorAll('.tb_showdate .table_cell'); // Chọn các ô trong cấu trúc mới

    cells.forEach(function (cell) {
        cell.addEventListener('mouseout', function () {
            cell.style.color = ''; // Trở về màu chữ mặc định
        });
    });
});


document.addEventListener("DOMContentLoaded", function () {
    var buttons = document.querySelectorAll('.movie_detail .tb_showdate .table-cell-button');

    buttons.forEach(function (button) {
        button.addEventListener('click', function () {
            buttons.forEach(function (btn) {
                btn.style.backgroundColor = '#ffffff'; // Đặt lại màu nền cho tất cả các nút
                btn.style.color = '#000000'; // Đặt lại màu chữ cho tất cả các nút
            });
            button.style.backgroundColor = 'blue'; // Đặt màu nền cho nút được nhấn
            button.style.color = '#ffffff'; // Đặt màu chữ cho nút được nhấn
        });
    });
});

