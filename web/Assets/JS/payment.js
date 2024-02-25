function sendDataToServlet() {
    // Tạo một đối tượng JSON để chứa dữ liệu từ tất cả các input
    var dataToBeSent = {};

    // Lặp qua tất cả các thẻ input có class là "inputData"
    $(".inputData").each(function () {
        // Lấy id và giá trị của mỗi input và thêm vào đối tượng JSON
        var inputId = $(this).attr("id");
        var inputValue = $(this).val();
        dataToBeSent[inputId] = inputValue;
    });

    // Sử dụng AJAX để gửi dữ liệu từ JSP sang Servlet
    $.ajax({
        type: "POST",
        url: "YourServletURL", // Đặt URL của Servlet ở đây
        data: dataToBeSent,
        success: function (response) {
            // Xử lý phản hồi từ Servlet (nếu cần)
            console.log(response);
        },
        error: function (error) {
            console.error("Error during AJAX request:", error);
        }
    });
}