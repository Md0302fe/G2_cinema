/* 
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/JavaScript.js to edit this template
 */
document.addEventListener("DOMContentLoaded", function () {
    const timeSlots = document.querySelectorAll(".time_slot");
    const showtimeSection = document.querySelector(
            ".showtime_booking .movie_time"
            );
    timeSlots.forEach(function (timeSlot) {
        timeSlot.addEventListener("click", function (event) {
            // Get the selected time from the clicked time slot
            const selectedTime = timeSlot.textContent;
            // Update the showtime section with the selected time
            showtimeSection.textContent = selectedTime;
            // Add or remove active class for styling (optional)
            timeSlots.forEach(function (otherTimeSlot) {
                if (otherTimeSlot !== timeSlot) {
                    otherTimeSlot.classList.remove("active_duration");
                }
            });
            timeSlot.classList.add("active_duration");
        });
    });
});

document.addEventListener("DOMContentLoaded", function () {
    const borderSeatsList = document.querySelectorAll(".border_seats");
    const billSection = document.getElementById("billSection");
    let selectedSeats = 0;
    let seats = [];



//    function updateBillSection(seats, selectedSeats) {
//        const billContent = `
//        <div class="box_total_price flex">
//            <div class="total_seat">
//                <div class="flex" style="margin-bottom: -10px;">
//                    <p class="bold" style="margin-right: 6px;">${selectedSeats}x</p>
//                    <p style="width: 61px;">Ghế đơn</p>
//                </div>
//                <div class="flex">
//                    <p style="margin-right: 6px;">Ghế:</p>
//                    <p class="bold">${seats.join(",")}</p>
//
//                </div>                  
//            </div>
//            <p class="price_seat_black bold">0 ₫</p>
//        </div>
//        <div class="line_totalbooking"></div>
//      `;
//
//        // Update the HTML of the bill section
//        billSection.innerHTML = billContent;
//    }

});



