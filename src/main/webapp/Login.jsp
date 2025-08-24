<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Login page</title>
<!-- remixicon cdn link -->
  <link href="https://cdn.jsdelivr.net/npm/remixicon@4.5.0/fonts/remixicon.css" rel="stylesheet"/>
   <!-- bootstrap cdn link -->
   <link rel="stylesheet" href="	https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css">
   <!-- custom css link -->
  <link rel="stylesheet" href="CSS/Login.css">
</head>
<body>

 
  <!-- login page -->
  <div class="container">
    <div class="row vh-100 g-0">
      <!-- left-side -->
       <div class="col-lg-6 position-relative d-none d-lg-block pt-1">
        <div class="bg-holder" style="background-image: url('./Images/background/loginvector.jpg');"></div>
       </div>
       
       
    
      <!-- left-side-end -->

      <!-- right-side-start -->
       <div class="col-lg-6">
        <div class="row align-items-center justify-content-center h-100 g-0 px-4 px-sm-0 pt-3 login">
          <div class="col col-sm-6 col-lg-7 col-xl-6">
             <div class="text-center mb-4">
              <h3 class="fw-bold">Log In</h3>
             </div>

             <!-- form-start -->
             <!--   <form action="Login" method="post" id="form" onsubmit="return validateForm()">
                <div class="input-group mb-3 incorrect" >
                  <span class="input-group-text ">
                    <i class="ri-mail-line"></i>
                  </span>
                  <input type="text" class="form-control  form-control-lg fs-6 outline-none" placeholder="Email" name="email">
                </div> 


                <div class="input-group mb-3">
                  <span class="input-group-text">
                    <i class="ri-lock-line"></i>
                  </span>
                  <input type="password" class="form-control form-control-lg fs-6" placeholder="Password" name="password">
                </div>

                <div class="form-group mb-3 d-flex justify-content-between">
                </div>
                <button class="btn btn-primary btn-lg w-100 mb-3">Login</button>
              </form>
             <!-- form-end -->
             <!--  <div class="text-center">
                <small>Don't have an account? &nbsp;<a href="Signup.jsp" class="fw-bold">Sign Up</a></small>
              </div> --> 
              
              
              <form action="Login" method="post" id="form" onsubmit="return validateForm()">
    <div class="input-group mb-3">
        <span class="input-group-text">
            <i class="ri-mail-line"></i>
        </span>
        <input type="text" class="form-control form-control-lg" placeholder="Email" name="email" required>
    </div>

    <div class="input-group mb-3">
        <span class="input-group-text">
            <i class="ri-lock-line"></i>
        </span>
        <input type="password" class="form-control form-control-lg" placeholder="Password" name="password" required>
    </div>

    <button class="btn btn-primary btn-lg w-100"><a class="text-light" href="index.html">Login</a></button>
    
    <div class="text-center">
                <small>Don't have an account? &nbsp;<a href="Signup.jsp" class="fw-bold">Sign Up</a></small>
              </div>
</form>
              

          </div>
        </div>
       </div>
      <!-- right-side-end -->
      
      <!-- Error Modal (hidden initially) -->
<div class="modal fade" id="errorModal" tabindex="-1" aria-labelledby="errorModalLabel" aria-hidden="true">
  <div class="modal-dialog">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title" id="errorModalLabel">Login Failed</h5>
        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
      </div>
      <div class="modal-body">
        Invalid Email or Password!
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Close</button>
      </div>
    </div>
  </div>
</div>


 
 

  <!-- bootstrap js cdn link -->
  <script src="	https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"></script>
  <!-- cutom js link -->
  <script src="JavaScript/Login.js" defer></script>
</body>
</html>