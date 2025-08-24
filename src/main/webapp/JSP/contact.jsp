<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
 <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.7.1/css/all.min.css">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.11.3/font/bootstrap-icons.min.css">
    <link rel="stylesheet" href="./CSS/contact.css">
</head>
<body>


      <section class="main-img">
        <div class="navb d-flex">
          <div>
            <h5 class="text-light fw-bold ps-3 pt-3 adv">Adventure</h5>
          </div>
          <div class="d-flex d-lg-none">
            <div class="menu-icon2 ">
                <a class=" menu-icon pb-3" href=""><i class="bi bi-list"></i></a>
            </div>
            <div>
                <p class="menu-name pe-3 pt-3 ms-2">MENU</p>
            </div>
          </div>
    
          <div>
            <ul class="d-flex gap-5 nav-menu">
               <li class="text-light"><a class="text-light" href="index.html">Home</a></li>
               <li class="text-light"><a class="text-light" href="about.jsp">About</a></li>
               <li class="text-light"><a class="text-light" href="places.jsp">Places</a></li>
               <li class="text-light"><a class="text-light" href="hotels.jsp">Hotels</a></li>
               <li class="text-light"><a class="text-light" href="contact.jsp">Contact</a></li>
            </ul>
          </div>
    
         
    
        </div>

        <h2 class="about-name text-light fw-bold">Contact</h2>
       
       </section>

       <h4 class="ms-5 con-name mt-5">Contact Information</h4>

       <div class="container mt-5 d-md-flex d-lg-flex gap-5">
        <p class="text-secondary ms-lg-5 me-lg-5">Address: 198 West 21th Street, Suite 721 New York NY 10016</p>
        <p><span class="text-secondary">Phone:</span> + 1235 2355 98</p>
        <p><span class="text-secondary">Email:</span> info@yoursite.com</p>
        <p><span class="text-secondary">Website</span> yoursite.com</p>
       </div>

      <div class="conc">
        <input class="name-1 container ms-3" type="text" placeholder="Your Name">
        <input class="email-1 container ms-3 mt-3" type="text" placeholder="Your Email">
        <input class="sub container ms-3 mt-3" type="text" placeholder="Subject">
        <input class="mess container ms-3 mt-3" type="textarea" placeholder="Message">
 
        <button class="sends rounded-5 text-light ms-3   mt-3" type="submit">Send Message</button>
 
      </div>


      <!-- Footer section starts -->

      <section class="footer d-md-flex d-lg-flex pt-lg-5">
          
        <div class="advn ms-md-3">
        
          <h3 class="text-light container foot-h2">Adventure</h3>
          <p class=" foot-h3">Far far away, behind the word mountains, far from the countries Vokalia and Consonantia, there live the blind texts.</p>

        </div>

        <div class="me-md-5 infn">

            <h3 class="text-light info container">Information</h3>


            <div class=" container list mt-md-5">
            <p>About us</p>
            <p>Online enquiry</p>
            <p>Call us</p>
            <p>General enquiries</p>
            <p>Booking Conditions</p>
            <p>Privacy and Policy</p>
            <p>Refund Policy</p>
          </div>
          </div>

            <div class="me-md-5 expe">
              <h3 class="text-light expe-footer container ">Experience</h3>

              <div class="exp-footer container mt-md-5">
              <p>Experience</p>
                <p>Beach</p>
                <p>Adventure</p>
                <p> Wildlife</p>
                <p> Honeymoon</p>
                <p>Nature</p>
                <p>Party</p>
              </div>
            </div>

            <div class="que">
              <h3 class="text-light expe-footer container ">Have a Questions?</h3>

              <div class="d-flex loc container pe-md-5">
                <a class="footer-loc" href=""><i class="bi bi-geo-alt-fill"></i></a>
                <p class="loc-p ms-4">203 Fake St. Mountain View, San Francisco, California, USA</p>
              </div>

              <div class="d-flex container">
                <a class="footer-call" href=""><i class="bi bi-telephone-fill"></i></a>
                <p class="text-light ms-4">+2 392 3929 210</p>
              </div>

              <div class="d-flex container">
                <a class="footer-mail" href=""><i class="bi bi-envelope-fill"></i></a>
                <p class="text-light ms-4">	info@yourdomain.com</p>
              </div>

            </div>

        
         
       </section>

   

</body>
</html>