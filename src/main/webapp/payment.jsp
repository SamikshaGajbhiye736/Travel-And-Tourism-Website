<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ page import="java.sql.PreparedStatement" %>
<%@ page import="java.sql.Connection" %>
<%@ page import="java.sql.DriverManager" %>
<%@ page import="java.sql.ResultSet" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Train Ticket Payment</title>
    <!-- remixicon cdn link -->
    <link href="https://cdn.jsdelivr.net/npm/remixicon@4.5.0/fonts/remixicon.css" rel="stylesheet"/>
    <!-- bootstrap cdn link -->
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css">
    <!-- custom css link -->
    <style type="text/css">
        .container {
            display: flex;
            align-items: center;
            justify-content: center;
        }
        .card {
            width: 50%;
        }
        .card-body {
            padding: 18px;
        }
    </style>
</head>
<body>
    <div class="container mt-5">
        <div class="card shadow-lg m-5">
            <div class="card-header bg-secondary text-white text-center">
                <h3>Travel and Tourism Payment</h3>
            </div>
            <div class="card-body">
                <div class=" p-3">
                		<div class="d-flex align-item-center justify-content-between">
                		<p class="fs-5"><strong>Package Name : <span><%= request.getParameter("package_name") %></span></strong></p>
                    	<p class="fs-5"><strong class="text-secondary">Price : &#8377; <span><%= request.getParameter("totalprice") %></span></strong></p>
                		</div>
                    	<div class="d-flex align-item-center justify-content-between">
                    	<p class="fs-5"><strong>Destination : <span><%= request.getParameter("destination") %></span></strong></p>
                    <p class="fs-5"><strong>End Date : <span><%= request.getParameter("return_date") %></span></strong></p>
                    	</div>
                    
                </div>
        
                <div class="row">
                    <!-- payment form -->    
                    <form action="PaymentProcess.jsp" method="post">
                        <div class="mb-3 d-lg-flex gap-lg-2">
                            <div class="col-12 col-md-6 mb-3 mb-md-0">
                                <label for="passengerName" class="form-label">Passenger Name</label>
                                <input type="text" id="passengerName" name="passengerName" class="form-control" required>
                            </div>
                            <div class="col-12 col-md-6">
                                <label for="cardNumber" class="form-label">Card Number</label>
                                <input type="text" id="cardNumber" name="cardNumber" class="form-control" placeholder="1234 5678 9123 4567" required>
                            </div>
                        </div>

                        <div class="mb-3 d-lg-flex gap-lg-2">
                            <div class="col-12 col-md-6 mb-3 mb-md-0">
                                <label for="expiryDate" class="form-label">Expiry Date</label>
                                <input type="month" id="expiryDate" name="expiryDate" class="form-control" required>
                            </div>
                            <div class="col-12 col-md-6"> <!-- pincode number  -->
                                <label for="cvv" class="form-label">CVV (Card Verification Value)</label>
                                <input type="password" id="cvv" name="cvv" class="form-control" required>
                            </div>
                        </div>

                        <!-- Hidden fields to store train and travel details -->
                        <input type="hidden" name="package_name" value="<%= request.getParameter("package_name") %>">
                        <input type="hidden" name="end_date" value="<%= request.getParameter("end_date") %>">
                        <input type="hidden" name="start_date" value="<%= request.getParameter("start_date") %>">
                        <input type="hidden" name="totalprice" value="<%= request.getParameter("totalprice") %>">

                        <div class="text-center">
                            <button type="submit" class="btn btn-success btn-lg">Pay Now</button>
                        </div>
                    </form>
                </div>        
            </div>
        </div>
    </div>
    <!-- bootstrap js cdn link -->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>
