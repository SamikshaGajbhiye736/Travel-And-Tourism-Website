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

//function validateForm() {
   // const name = document.getElementById("name").value; // Get name field value
   // const email = document.getElementById("email").value; // Get email field value
   // const password = document.getElementById("password").value; // Get password field value

    //if (name === "" || email === "" || password === "") {
     //   alert("Name, email, and password must not be empty!");
    //    return false;
   // }
  //  return true;
//}
   // Show an alert and redirect back to the page if there's an error
   //window.onload = function () {
    //  if (request.getAttribute("error") != null) { 
  //         alert(`error`);
   //    }
  // };

  
  // Function to validate the form
  function validateForm(event) {
      const name = document.getElementById("name").value;
      const email = document.getElementById("email").value;
      const password = document.getElementById("password").value;

      if (name === "" || email === "" || password === "") {
          showPopup("All fields are required!"); // If validation fails
          event.preventDefault(); // Prevent form submission
      } else {
          showPopup("Signup successful!"); // If validation passes
          // Do not call preventDefault here, allow the form to submit
      }
  }

  // Function to show the popup
  function showPopup(message) {
      const popup = document.getElementById("customPopup");
      const popupMessage = popup.querySelector("p");
      popupMessage.textContent = message; // Set the message dynamically
      popup.style.display = "flex"; // Show the popup

      const closeButton = document.getElementById("closePopup");
      closeButton.onclick = function () {
          popup.style.display = "none"; // Hide the popup when OK is clicked
          if (message === "Signup successful!") {
              redirectToLogin(); // Redirect only on successful signup
          }
      };
  }

  // Function to redirect to the login page after the popup is closed
  function redirectToLogin() {
      window.location.href = "./Login.jsp"; // Update with your actual login page URL
  }

  // Attach the form validation to the form submit event
  document.querySelector("form").addEventListener("submit", function (event) {
      validateForm(event); // Call validateForm
  });





