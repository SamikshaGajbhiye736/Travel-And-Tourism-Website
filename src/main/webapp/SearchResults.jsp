<%@page import="java.sql.PreparedStatement"%>
<%@ page import="java.sql.Connection" %>
<%@ page import="java.sql.DriverManager" %>
<%@ page import="java.sql.PreparedStatement" %>
<%@ page import="java.sql.ResultSet" %>

<!DOCTYPE html>
<html>
<head>
    <title>Search Train Results</title>
     <!-- remixicon cdn link -->
    <link href="https://cdn.jsdelivr.net/npm/remixicon@4.5.0/fonts/remixicon.css" rel="stylesheet"/>
    <!-- bootstrap cdn link -->
     <link rel="stylesheet" href="	https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css">
     <!-- custom css link -->
    <link rel="stylesheet" href="CSS/searchResult.css">
    <style>
        
        table {
            width: 80%;
            margin: 20px auto;
            border-collapse: collapse;
        }
        table, th, td {
            border: 1px solid black;
        }
        th, td {
            padding: 10px;
            text-align: center;
        }
        button{
        border:1px solid red;
        }
    </style>
</head>
<body>

   <section class="search pt-4 mt-4" id="search">
        <div class="search-sec">
            <div class="container">
                <div class="row">
                    <div class="col-12 col-lg-12">
                        <div class="card search-card shadow-sm border-0">
                            <div class="card-body p-4">
                                <form>
                                    <div class="row mb-3">
                                       
                                    </div>
                                    <div class="row g-3 position-relative searching mb-5 mb-lg-4" >
                                        <div class="col-12 col-md-6 col-lg-2">
                                            <p><strong>From:&nbsp; </strong> <%= request.getParameter("fromLocation") %></p>
                                        </div>
                                        <div class="col-12 col-md-6 col-lg-2">
                                            <p><strong>To: &nbsp;</strong> <%= request.getParameter("toLocation") %></p>
                                        </div>
                                        <div class="col-12 col-md-6 col-lg-2">
                                            <p class="me-5"><strong>CheckInDate: &nbsp;</strong> <%= request.getParameter("checkInDate") %></p>
                                        </div>
                                        <div class="col-12 col-md-6 col-lg-2">
                                            <p class="me-5"><strong>CheckOutDate: &nbsp;</strong> <%= request.getParameter("checkOutDate") %></p>
                                        </div>
                                         <div class="col-12 col-md-6 col-lg-2 d-flex align-items-center">
                                            <p><strong>Travelers:&nbsp; </strong> <%= request.getParameter("travelers") %></p>
                                        </div>
                                        <div class="col-12 col-md-6 col-lg-2 text-center  search-btn">
                                            <a href="index.html" class="btn btn-primary btn-lg">Back to Search</a>
                                        </div>
                                    </div>
                                   <!--  <div class="row mt-4">
                                        <div class="col-12 text-center search-btn">
                                            <a href="index.html" class="btn btn-primary btn-lg">Back to Search</a>
                                        </div>
                                    </div>  -->
                                </form>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
  

    <h1 class="mt-5 text-center pb-2">Available Packages</h1>

    <%
        // Get search parameters
        String from = request.getParameter("fromLocation");
        String to = request.getParameter("toLocation");
        String checkIndate = request.getParameter("checkInDate");
        String checkOutdate = request.getParameter("checkOutDate");
        String travelers = request.getParameter("travelers");

        if (from != null && to != null && checkIndate != null && checkOutdate != null && travelers != null) {
            try {
                // Connect to database
                Class.forName("com.mysql.cj.jdbc.Driver");
                Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/travel", "root", "root");

                // SQL query
                String query = "SELECT * FROM customer WHERE departure = ? AND destination = ? AND departure_date = ? AND return_date = ? AND travelers = ?" ;
                PreparedStatement ps = con.prepareStatement(query);
                ps.setString(1, from);
                ps.setString(2, to);
                ps.setString(3, checkIndate);
                ps.setString(4, checkOutdate);
                ps.setString(5, travelers);

                ResultSet rs = ps.executeQuery();

                // Display results
                if (rs.next()) {
                    %>
                    <table border="1" class="table table-striped-columns  table-bordered">
                    <thead class="table-dark">
                        <tr> 
                            <th>Package Name</th>
                            <th>Departure</th>
                            <th>destination</th>
                            <th>Departure Date</th>
                            <th>Price</th>
                            <th>Book Ticket</th>
                        </tr>
                        </thead>
                    <%
                    do {
                        %>
                       <tbody class="table-dark">
                        <tr class="p-5 ">
                            <td><%= rs.getString("package_name") %></td>
                            <td><%= rs.getString("departure") %></td>
                            <td><%= rs.getString("destination") %></td>
                            <td><%= rs.getDate("departure_date") %></td>
                            <td><%= rs.getInt("totalprice") %></td>
                            <td>
                            <form action="payment.jsp" method="post" class="table-dark">
                            <input type="hidden" name="package_name" value="<%= rs.getString("package_name") %>">
        					<input type="hidden" name="totalprice" value="<%= rs.getInt("totalprice") %>">
        					  <input type="hidden" name="destination" value="<%= rs.getString("destination") %>">
    						 <input type="hidden" name="return_date" value="<%= rs.getDate("return_date") %>">
    						 <input type="hidden" name="departure" value="<%= rs.getString("departure") %>">
    						 
                            <button type="submit" class="p-3 pe-3 btn btn-success  bg-green">Book Now</button>
                            </form>
                            </td>
                        </tr>
                       </tbody>
                       
                        <%
                    } while (rs.next());
                    %>
                    </table>
                    <%
                } else {
                    %>
                    <p class="text-center pt-3">No packages available for the selected route</p>
                    <%
                }

                con.close();
            } catch (Exception e) {
                out.println("Error: " + e.getMessage());
            }
        } else {
            %>
            <p class="text-center pt-3">Please fill out all the fields in the form.</p>
            <%
        }
    %>
    
     <!-- bootstrap js cdn link -->
     <script src="	https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"></script>
     <!-- bootstrap popperjs -->
     <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.11.8/dist/umd/popper.min.js"></script>
    <!-- cutom js link -->
</body>

</html>
