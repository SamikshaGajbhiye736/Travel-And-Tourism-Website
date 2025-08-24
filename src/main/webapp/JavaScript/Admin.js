//form validation

function validateForm() {
    const email = document.querySelector('input[name="email"]').value.trim();
    const password = document.querySelector('input[name="password"]').value.trim();

    if (!email || !password) {
        alert("Please fill out all fields."); // Simple alert for empty fields
        return false; // Prevent form submission
    }

    // Show styled popup for successful login
    showPopup("Login successful!");
    return false; // Prevent default form submission while the popup is displayed
}

// Function to show the popup
function showPopup(message) {
    // Create a popup container
    const popup = document.createElement("div");
    popup.style.position = "fixed";
    popup.style.top = "50%";
    popup.style.left = "50%";
    popup.style.transform = "translate(-50%, -50%)";
    popup.style.backgroundColor = "#fff";
    popup.style.padding = "20px";
    popup.style.borderRadius = "8px";
    popup.style.boxShadow = "0 4px 8px rgba(0, 0, 0, 0.2)";
    popup.style.textAlign = "center";
    popup.style.zIndex = "1000";
    popup.style.width = "300px";
	popup.style.height = "190px";
    // Add the message
    const messageParagraph = document.createElement("p");
    messageParagraph.textContent = message;
    messageParagraph.style.margin = "0 0 20px 0";
    messageParagraph.style.fontSize = "25px";
    messageParagraph.style.color = "#333";
    popup.appendChild(messageParagraph);

    // Add an OK button
    const closeButton = document.createElement("button");
    closeButton.textContent = "OK";
    closeButton.style.padding = "20px 30px";
    closeButton.style.backgroundColor = "#013220";
    closeButton.style.color = "#fff";
    closeButton.style.border = "none";
    closeButton.style.borderRadius = "4px";
    closeButton.style.cursor = "pointer";
    closeButton.style.fontSize = "14px";
    closeButton.style.outline = "none";

    closeButton.onclick = function () {
        popup.remove(); // Remove popup
        window.location.href = "./AdminPage.jsp"; // Redirect to home page (adjust URL if needed)
    };

    popup.appendChild(closeButton);

    // Append the popup to the body
    document.body.appendChild(popup);
}

