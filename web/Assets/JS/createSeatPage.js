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
      timeSlot.classList.toggle("active_duration");
    });
  });
});

document.addEventListener("DOMContentLoaded", function () {
    const borderSeatsList = document.querySelectorAll(".border_seats");
    const billSection = document.getElementById("billSection");
    let selectedSeats = 0;

    borderSeatsList.forEach(function (borderSeat) {
      borderSeat.addEventListener("click", function (event) {
        if (!borderSeat.classList.contains("active_duration_seat")) {
          // Check if the maximum limit (8 seats) is reached
          if (selectedSeats >= 8) {
            alert("You can only select up to 8 seats.");
            return;
          }

          selectedSeats++;
        } else {
          selectedSeats = Math.max(0, selectedSeats - 1);
        }

        // Update the bill section
        updateBillSection(selectedSeats);

        // Show the bill section if at least one seat is selected
        if (selectedSeats > 0) {
          billSection.style.display = "block";
        } else {
          // Hide the bill section if no seat is selected
          billSection.style.display = "none";
        }

        borderSeat.classList.toggle("active_duration_seat");
      });
    });

    function updateBillSection(seats) {
      const billContent = `
        <div class="flex">
            <div class="total_seat">
                <div class="flex" style="margin-bottom: -10px;">
                    <p class="bold" style="margin-right: 6px;">${seats}x</p>
                    <p style="width: 61px;">Ghế đơn</p>
                </div>
                <div class="flex">
                    <p style="margin-right: 6px;">Ghế:</p>
                    <p class="bold">I12</p>
                </div>                  
            </div>
            <p class="price_seat_black bold">0 ₫</p>
        </div>
        <div class="line_totalbooking"></div>
      `;

      // Update the HTML of the bill section
      billSection.innerHTML = billContent;
    }
});

