<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Login page</title>
  <!-- remixicon cdn link -->
  <link href="https://cdn.jsdelivr.net/npm/remixicon@4.5.0/fonts/remixicon.css" rel="stylesheet"/>
   <!-- bootstrap cdn link -->
   <link rel="stylesheet" href="	https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css">
   <!-- custom css link -->
  <link rel="stylesheet" href="CSS/Admin.css">
</head>
<body>

 
  <!-- login page -->
  <div class="container">
    <div class="row vh-100 g-0">
      <!-- left-side -->
       <div class="col-lg-6 position-relative d-none d-lg-block pt-5 mt-5">
        <div class="bg-holder" style="background-image: url('./Images/background/loginvector.jpg');"></div>
       </div>
    <!-- </div> -->
      <!-- left-side-end -->

      <!-- right-side-start -->
       <div class="col-lg-6">
        <div class="row align-items-center justify-content-center h-100 g-0 px-4 px-sm-0 pt-5 login">
          <div class="col col-sm-6 col-lg-7 col-xl-6">
             <div class="text-center mb-4">
              <h3 class="fw-bold">Admin LogIn</h3>
             </div>

             <!-- form-start -->
              <form action="AdminLoginServlet" method="post" onsubmit="return validateForm()">
                <div class="input-group mb-3">
                  <span class="input-group-text">
                    <i class="ri-mail-line"></i>
                  </span>
                  <input type="email" class="form-control  form-control-lg fs-6" placeholder="Email" name="email">
                </div>


                <div class="input-group mb-3">
                  <span class="input-group-text">
                    <i class="ri-lock-line"></i>
                  </span>
                  <input type="password" class="form-control form-control-lg fs-6" placeholder="Password" name="password">
                </div>

                <button class="btn btn-primary btn-lg w-100 mb-3"><a class="text-light" href="AdminHomePage.jsp">Login</a></button>
              </form>
          </div>
        </div>
       </div>
      <!-- right-side-end -->

    </div>
  </div>
 
 

  <!-- bootstrap js cdn link -->
  <script src="	https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"></script>
  <!-- cutom js link -->
     
     <script src="JavaScript/Admin.js" defer></script>
  
</body>

</html>