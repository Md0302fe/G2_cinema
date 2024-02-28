/* 
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/JavaScript.js to edit this template
 */

document.addEventListener("DOMContentLoaded", function () {
    document.addEventListener('change', function (event) {
        var selectedImage = document.getElementById('selected-image');
        electedImage.style.display = "block";
        selectedImage.src = URL.createObjectURL(event.target.files[0]);
    })
})
