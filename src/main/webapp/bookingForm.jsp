<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Booking Form</title>
    <!-- Link to external CSS file -->
    <link rel="stylesheet" href="CSS/booking.css">
    <!-- Optional Bootstrap for additional styling -->
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
</head>
<body>
    <div class="container mt-5">
        <h2 class="text-center">Booking Form</h2>
        
        <!-- Form to capture user input -->
        <form action="BookingServlet" method="POST">
            <div class="form-group">
                <label for="passengerName">Passenger Name</label>
                <input type="text" class="form-control" id="passengerName" name="passengerName" required>
            </div>
            
            <div class="form-group">
                <label for="age">Age</label>
                <input type="text" class="form-control" id="age" name="age" required>
            </div>

            <div class="form-group">
                <label for="gender">Gender</label>
                <input type="text" class="form-control" id="gender" name="gender" required>
            </div>

            <div class="form-group">
                <label for="email">Email</label>
                <input type="email" class="form-control" id="email" name="email" required>
            </div>

            <div class="form-group">
                <label for="phone">Phone</label>
                <input type="text" class="form-control" id="phone" name="phone" required>
            </div>

            <div class="form-group">
                <label for="seats">Seats</label>
                <input type="text" class="form-control" id="seats" name="seats" required>
            </div>

            <div class="form-group">
                <label for="searchDate">Search Date</label>
                <input type="text" class="form-control" id="searchDate" name="searchDate" required>
            </div>

            <div class="form-group">
                <label for="searchClass">Search Class</label>
                <input type="text" class="form-control" id="searchClass" name="searchClass" required>
            </div>

            <div class="form-group">
                <label for="searchFrom">Search From</label>
                <input type="text" class="form-control" id="searchFrom" name="searchFrom" required>
            </div>

            <div class="form-group">
                <label for="searchTo">Search To</label>
                <input type="text" class="form-control" id="searchTo" name="searchTo" required>
            </div>

            <button type="submit" class="btn btn-primary btn-block">Submit Booking</button>
        </form>
    </div>

    <!-- Optional Bootstrap JS and dependencies -->
    <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.3/dist/umd/popper.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
</body>
</html>
