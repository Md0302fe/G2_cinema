/* 
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/JavaScript.js to edit this template
 */

function playVideo() {
  var poster = document.querySelector(".poster");
  var video = document.getElementById("movie_trailer");
  poster.style.display = "none";
  video.style.display = "block";
}

function openModal() {
  var modal = document.getElementById("videoModal");
  modal.style.display = "flex";
}

function closeModal() {
  var modal = document.getElementById("videoModal");
  var video = modal.querySelector("iframe");

  if (video) {
    var videoSrc = video.src;
    video.src = "";
    video.src = videoSrc;
  }

  modal.classList.remove("active");
  modal.style.display = "none";
}
