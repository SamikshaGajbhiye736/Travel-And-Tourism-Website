<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ page import="java.sql.*" %>
<%@ page import="java.sql.PreparedStatement" %>
<%@ page import="java.sql.Connection" %>
<%@ page import="java.sql.DriverManager" %>
<%@ page import="java.sql.ResultSet" %>
<html>
<head>
<title>Payment Successfully</title>
<!--  Bootstrap CSS -->
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet">
<style>
    .success-container {
        min-height: 100vh;
        display: flex;
        justify-content: center;
        align-items: center;
    }
    .success-box {
        padding: 30px;
        border-radius: 8px;
        box-shadow: 0 4px 12px rgba(0, 0, 0, 0.1);
        text-align: center;
        background: #ffffff;
    }
    .checkmark-circle {
        width: 70px;
        height: 70px;
        margin: 0 auto 20px;
        background: #28a745;
        border-radius: 50%;
        display: flex;
        justify-content: center;
        align-items: center;
    }
    .checkmark-circle i {
        color: white;
        font-size: 36px;
    }
    .btn-home {
        background-color: #28a745;
        border: none;
    }
    .btn-home:hover {
        background-color: #218838;
    }
</style>
</head>
<body>
<%
    String packageName = request.getParameter("package_name");
    String passengerName = request.getParameter("passengerName");
    String cardNumber = request.getParameter("cardNumber").replace(" ", "");
    String expiryDate = request.getParameter("expiryDate");
    String cvv = request.getParameter("cvv");
    String start_date = request.getParameter("departure_date");
    String end_date = request.getParameter("return_date");
    String price = request.getParameter("totalprice");

    if (cardNumber.length() != 16) {
        out.println("<p>Invalid card number length.</p>");
        return;
    }

    // Assuming expiryDate is in 'YYYY-MM' format, append '-01' to make it a valid date
    if (expiryDate.matches("\\d{4}-\\d{2}")) {
        expiryDate = expiryDate + "-01"; // Convert to 'YYYY-MM-01' for valid DATE format
    } else {
        out.println("<p>Invalid expiry date format. Please use 'YYYY-MM'.</p>");
        return;
    }

    Connection con = null; // Declare con outside the try block to use in both places

    try {
        Class.forName("com.mysql.cj.jdbc.Driver");
        con = DriverManager.getConnection("jdbc:mysql://localhost:3306/travel", "root", "root");

        try (PreparedStatement ps = con.prepareStatement(
             "INSERT INTO paymentin (package_name,  passenger_name, card_number, expiry_date, cvv, start_date, end_date, price) VALUES (?, ?, ?, ?, ?, ?, ?, ?)")) {

            con.setAutoCommit(false); // Begin transaction

            ps.setString(1, packageName);
            ps.setString(2, passengerName);
            ps.setString(3, cardNumber);
            ps.setDate(4, java.sql.Date.valueOf(expiryDate));  // Convert to SQL Date
            ps.setString(5, cvv);
            ps.setString(6, start_date);
            ps.setString(7, end_date);
            ps.setString(8, price);

            int i = ps.executeUpdate();

            if (i > 0) {
                con.commit(); // Commit transaction
%>
                
                <!-- Payment Success Content -->
					<div class="container success-container">
    					<div class="success-box">
        					<div class="checkmark-circle">
            					<i class="bi bi-check-lg">&#10003;</i> 
       						 </div>
        						<h2 class="text-success">Your payment was successful</h2>
        						<p class="mb-3">
            						Thank you, <strong><%= passengerName %></strong>. 
            						Your payment for <strong><%= packageName %></strong> <br/> in <strong><%= price %></strong>  is confirmed.
        						</p>
        						<a href="index.html" class="btn btn-home text-white p-3">Go to HomePage</a>
   						 </div>
					</div>
<%
            } else {
                con.rollback(); // Rollback transaction
%>
                <div class="container mt-5">
                    <div class="alert alert-danger text-center">
                        <h4>Payment Failed!</h4>
                        <p>Please try again.</p>
                        <a href="payment.jsp" class="btn btn-danger">Retry Payment</a>
                    </div>
                </div>
<%
            }
        }
    } catch (SQLException e) {
        if (con != null) {
            try {
                con.rollback(); // Rollback transaction in case of SQL error
            } catch (SQLException ex) {
                out.println("Error during rollback: " + ex.getMessage());
            }
        }
        out.println("SQL Error: " + e.getMessage());
    } catch (Exception e) {
        out.println("Error: " + e.getMessage());
    } finally {
        if (con != null) {
            try {
                con.close(); // Close the connection in the finally block to ensure it's always closed
            } catch (SQLException e) {
                out.println("Error closing connection: " + e.getMessage());
            }
        }
    }
%>

<!-- bootstrap js cdn link -->
<script src="https://cdn.jsdelivr.net/npm/bootstrap-icons/font/bootstrap-icons.js"></script>
</body>
</html>