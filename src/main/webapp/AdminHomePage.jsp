<%@ page import="java.sql.*" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Flight Ticket Dashboard</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
    <style>
        body {
            margin: 0;
            font-family: Arial, sans-serif;
        }
        .sidebar {
            background:#66A0F2;
            color: #fff;
            padding: 15px;
            height: 100%;
        }
        .sidebar h2 {
            margin-bottom: 20px;
        }
        .sidebar a {
            color: #fff;
            text-decoration: none;
            padding: 10px;
            display: block;
            margin-bottom: 5px;
        }
        .sidebar a:hover {
            background: #495057;
            border-radius: 5px;
        }
        .content {
            margin-left: 0;
            padding: 20px;
        }
        /* Sidebar and content layout for large screens (desktop) */
        @media (min-width: 992px) {
            .sidebar {
                width: 245px;
                position: fixed;
            }
            .content {
                margin-left: 245px;
            }
        }
        /* Hide sidebar and show navbar for tablet and mobile */
        @media (max-width: 992px) {
            .sidebar {
                display: none;
            }
            .content {
                margin-left: 0;
            }
        }
        /* Mobile and tablet navbar */
        @media (max-width: 992px) {
            .navbar {
                display: block;
            }
            .navbar-nav {
                text-align: center;
            }
            .table-responsive {
                overflow-x: auto;
            }
        }
        @media (max-width: 576px) {
            .sidebar a {
                padding: 8px;
            }
        }
    </style>
</head>
<body>
    <!-- Navbar for tablet and mobile views (both tablet and mobile) -->
    <nav class="navbar navbar-expand-lg navbar-dark bg-dark d-block d-sm-block d-md-none">
        <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
        </button>
        <div class="collapse navbar-collapse" id="navbarNav">
            <ul class="navbar-nav">
                <li class="nav-item">
                    <a class="nav-link" href="?data=search">Search Data</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="?data=payment">Payment Data</a>
                </li>
            </ul>
        </div>
    </nav>

    <!-- Sidebar for larger screens (desktop view) -->
    <div class="sidebar d-none d-md-block">
        <h2>Dashboard</h2>
        <a href="?data=search">Search Data</a>
        <a href="?data=payment">Payment Data</a>
    </div>

    <div class="content">
        <h1>Welcome to Travel & Tourism</h1>
        <div>
            <%
                String dataType = request.getParameter("data");
                if (dataType != null) {
                    Connection con = null;
                    Statement stmt = null;
                    ResultSet rs = null;
                    try {
                        Class.forName("com.mysql.cj.jdbc.Driver");
                        con = DriverManager.getConnection("jdbc:mysql://localhost:3306/travel", "root", "root");
                        stmt = con.createStatement();

                        if (dataType.equals("search")) {
                            out.println("<div class='card mb-3'><div class='card-body'><h4 class='text-center mb-3 fw-bold fs-2'>Search Data</h4>");
                            out.println("<div class='table-responsive'><table class='table table-striped'>");
                            out.println("<thead class='table-dark'><tr><th>Booking ID</th><th>Package Name</th><th>Departure</th><th>Destination</th><th>Departure Date</th><th>Return Date</th><th>Travelers</th><th>Status</th><th>Total Price</th></tr></thead><tbody>");
                            rs = stmt.executeQuery("SELECT * FROM customer");
                            while (rs.next()) {
                                out.println("<tr><td>" + rs.getInt("booking_id") + "</td>" +
                                			"<td>" + rs.getString("package_name") + "</td>" +
                                			"<td>" + rs.getString("departure") + "</td>" +
                                            "<td>" + rs.getString("destination") + "</td>" +
                                            "<td>" + rs.getDate("departure_date") + "</td>" +
                                            "<td>" + rs.getDate("return_date") + "</td>" +
                                            "<td>" + rs.getInt("travelers") + "</td>" +
                                            "<td>" + rs.getString("status") + "</td>" +
                                            "<td>" + rs.getInt("totalprice") + "</td></tr>");
                            }
                            out.println("</tbody></table></div></div></div>");
                        } else if (dataType.equals("payment")) {
                            out.println("<div class='card mb-3'><div class='card-body'><h4 class='text-center mb-3 fw-bold fs-2'>Payment Data</h4>");
                            out.println("<div class='table-responsive'><table class='table table-striped'>");
                            out.println("<thead class='table-dark'><tr><th>ID</th><th>Package Name</th><th>Passenger Name</th><th>Card Number</th><th>Expiry Date</th><th>CVV</th><th>Start Date</th><th>End Date</th><th>Price</th><th>Actions</th></tr></thead><tbody>");

                            rs = stmt.executeQuery("SELECT * FROM paymentin");
                            while (rs.next()) {
                                int paymentId = rs.getInt("id");

                                out.println("<tr><td>" + paymentId + "</td>" +
                                		 "<td>" + rs.getString("package_name") + "</td>" +
                                            "<td>" + rs.getString("passenger_name") + "</td>" +
                                            "<td>" + rs.getString("card_number") + "</td>" +
                                            "<td>" + rs.getDate("expiry_date") + "</td>" +
                                            "<td>" + rs.getString("cvv") + "</td>" +
                                          
                                            "<td>" + rs.getDate("start_date") + "</td>" +
                                            "<td>" + rs.getString("end_date") + "</td>" +
                                            "<td>" + rs.getInt("price") + "</td>" +
                                            "<td>" +
                                            "<form action='AdminCancelTicket.jsp' method='post' style='display:inline;'>" +
                                            "<input type='hidden' name='payment_id' value='" + paymentId + "'>" +
                                            "<button type='submit' class='btn btn-danger'>Delete</button>" +
                                            "</form>" +
                                            "</td></tr>");
                            }
                            out.println("</tbody></table></div></div></div>");
                        }
                    } catch (Exception e) {
                        out.println("<div class='alert alert-danger'>Error: " + e.getMessage() + "</div>");
                    } finally {
                        if (rs != null) rs.close();
                        if (stmt != null) stmt.close();
                        if (con != null) con.close();
                    }
                } else {
                    out.println("<p>Select a category from the navbar to view data.</p>");
                }
            %>
        </div>
    </div>

    <!-- Bootstrap JS and dependencies -->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>
