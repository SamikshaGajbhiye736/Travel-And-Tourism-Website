<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Signup</title>
  <!-- remixicon cdn link -->
  <link href="https://cdn.jsdelivr.net/npm/remixicon@4.5.0/fonts/remixicon.css" rel="stylesheet"/>
  <!-- bootstrap cdn link -->
  <link rel="stylesheet" href="	https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css">
  <!-- custom css link -->
 <link rel="stylesheet" href="CSS/signup.css">
</head>
<body>





<!-- Signup page -->
    <div class="container">
        <div class="row vh-100 g-0">
          <!-- left-side -->
           <div class="col-lg-6 position-relative d-none d-lg-block mt-5">
            <div class="bg-holder" style="background-image: url('./Images/background/loginvector.jpg');"></div>
           </div>
        <!-- </div> -->
          <!-- left-side-end -->
    
          <!-- right-side-start -->
           <div class="col-lg-6 main-right">
            <div class="row align-items-center justify-content-center h-100 g-0 px-4 px-sm-0">
              <div class="col col-sm-6 col-lg-7 col-xl-6">
                 <div class="text-center mb-2">
                  <h3 class="fw-bold">Sign Up</h3>
                 </div>
    
                 <!-- divider-start -->
                  <div class="position-releative">
                    <hr class="text-secondary divider">
                  </div>
                 <!-- divider-end -->
    
                 <!-- form-start -->
                  <form action="Signup" method="post" id="form" onsubmit="return validateForm()">
                    <p id="error_message"></p>
                    <div class="input-group mb-3">
                      <span class="input-group-text">
                        <i class="ri-user-line"></i>
                      </span>
                      <input type="text" class="form-control  form-control-lg fs-6" placeholder="Username" name="name" id="name">
                    </div>
                    
                    <div class="input-group mb-3">
                        <span class="input-group-text">
                            <i class="ri-mail-line"></i>
                        </span>
                        <input type="email" class="form-control form-control-lg fs-6" name="email" placeholder="Email ID" id="email">
                      </div>
    
                    <div class="input-group mb-3">
                      <span class="input-group-text">
                        <i class="ri-lock-line"></i>
                      </span>
                      <input type="password" class="form-control form-control-lg fs-6" name="password" placeholder="Password" id="password">
                    </div>
    
                    <div class="form-group mb-3 d-flex justify-content-between">
                      <div class="form-check">
                        <input type="checkbox" class="form-check-input" id="formCheck">
                        <label for="formCheck" class="form-check-label text-secondary"><small>I agree to the <a href="#">terms and condition</a></small></label>
                      </div>
                    </div>
                    <button class="btn btn-primary btn-lg w-100 mb-3">Sign Up</button>
                  </form>
                 <!-- form-end -->
                  <div class="text-center">
                    <small>Already have an account? &nbsp;<a href="Login.jsp" class="fw-bold">Login</a></small>
                  </div>
    
              </div>
            </div>
           </div>
          <!-- right-side-end -->
          
          <!--popup message  -->
          <div id="customPopup" class="popup">
    <div class="popup-content">
        <h2>Success!</h2>
        <p>Login was successful!</p>
        <button id="closePopup">OK</button>
    </div>
</div>
          
    
        </div>
      </div>
     
     



    <!-- bootstrap js cdn link -->
  <script src="	https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"></script>
  <!-- custom js link -->
   <script src="JavaScript/signup.js" defer></script>

</body>
</html>