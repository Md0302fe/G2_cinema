/* 
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/JavaScript.js to edit this template
 */

function playVideo() {
  var poster = document.querySelector(".poster");
  var video = document.getElementById("movie_trailer");
  poster.style.display = "none";
  video.style.display = "block";
  video.play();
}

function openModal() {
  var modal = document.getElementById("videoModal");
  modal.style.display = "flex";
  setTimeout(function () {
      modal.classList.add("active");
  }, 1500); // Reduced the delay to 100ms
}

function closeModal() {
  var modal = document.getElementById("videoModal");
  modal.classList.remove("active");
  setTimeout(function () {
      modal.style.display = "none";
  }, 500);
}

