// navbar
const hamburger = document.querySelector(".hamburger");
const navMenu = document.querySelector(".nav-menu");

hamburger.addEventListener("click", mobileMenu);

function mobileMenu() {
  hamburger.classList.toggle("active");
  navMenu.classList.toggle("active");
}
const navLink = document.querySelectorAll(".nav-link");

navLink.forEach((n) => n.addEventListener("click", closeMenu));

function closeMenu() {
  hamburger.classList.remove("active");
  navMenu.classList.remove("active");
}



//form validation
  
  // Trigger modal on login failure
   window.onload = function() {
     if (sessionStorage.getItem("loginError") === "true") {
       var myModal = new bootstrap.Modal(document.getElementById('errorModal'), {
         keyboard: false
       });
       myModal.show();
       sessionStorage.removeItem("loginError"); // Reset error flag
     }
   }