<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>
<%@ page import="java.sql.PreparedStatement" %>
<%@ page import="java.sql.Connection" %>
<%@ page import="java.sql.DriverManager" %>
<%@ page import="java.sql.ResultSet" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
    String paymentId = request.getParameter("payment_id");
    if (paymentId != null && !paymentId.isEmpty()) {
        Connection con = null;
        PreparedStatement ps = null;

        try {
            Class.forName("com.mysql.cj.jdbc.Driver");
            con = DriverManager.getConnection("jdbc:mysql://localhost:3306/travel", "root", "root");

            String deleteQuery = "DELETE FROM paymentin WHERE id = ?";
            ps = con.prepareStatement(deleteQuery);
            ps.setInt(1, Integer.parseInt(paymentId));

            int rowsAffected = ps.executeUpdate();
            if (rowsAffected > 0) {
                response.sendRedirect("AdminHomePage.jsp?data=payment"); // Redirect back to the payment data page
            } else {
                out.println("<div class='alert alert-danger'>Failed to delete payment record.</div>");
            }
        } catch (Exception e) {
            out.println("<div class='alert alert-danger'>Error: " + e.getMessage() + "</div>");
        } finally {
            if (ps != null) ps.close();
            if (con != null) con.close();
        }
    } else {
        out.println("<div class='alert alert-danger'>Invalid payment ID.</div>");
    }
%>
</body>
</html>