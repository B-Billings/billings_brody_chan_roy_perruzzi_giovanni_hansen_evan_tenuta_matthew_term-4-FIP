<?php
header("Content-Type: application/json; charset=UTF-8");

if ($_SERVER['REQUEST_METHOD'] === 'POST') {
    // Handle preflight requests for CORS.
    header("Access-Control-Allow-Methods: POST");
    header("Access-Control-Allow-Headers: Content-Type");
    exit;
}

if ($_SERVER['REQUEST_METHOD'] === 'POST') {
    $recipient = "billings.brody@gmail.com";
    $subject = "Email from my *****";
    $visitor_name = "";
    $visitor_email = "";
    $message = "";
    $fail = [];

    // Sanitize and validate input fields.
    if (isset($_POST['firstname']) && !empty($_POST['firstname'])) {
        $visitor_name = filter_var($_POST['firstname'], FILTER_SANITIZE_SPECIAL_CHARS);
    } else {
        array_push($fail, "firstname");
    }

    if (isset($_POST['lastname']) && !empty($_POST['lastname'])) {
        $visitor_name .= ' ' . filter_var($_POST['lastname'], FILTER_SANITIZE_SPECIAL_CHARS);
    } else {
        array_push($fail, "lastname");
    }

    if (isset($_POST['email']) && !empty($_POST['email'])) {
        $visitor_email = filter_var($_POST['email'], FILTER_VALIDATE_EMAIL);
    } else {
        array_push($fail, "email");
    }

    if (isset($_POST['message']) && !empty($_POST['message'])) {
        $message = htmlspecialchars($_POST['message'], ENT_QUOTES, 'UTF-8');
    } else {
        array_push($fail, "message");
    }

    $headers = 'From: ' . $visitor_email . "\r\n" . 'Reply-to: ' . $visitor_email . "\r\n" . 'X-Mailer: PHP/' . phpversion();

    if (empty($fail)) {
        mail($recipient, $subject, $message, $headers);
        $results['message'] = sprintf("Thank you for contacting us, %s. We will respond within 24 hours.", $visitor_name);
    } else {
        header("HTTP/1.1 488 You DID NOT fill out the form correctly");
        die(json_encode(['message' => $fail]));
    }
} else {
    $results['message'] = "Please fill out the form correctly.";
}

// Replace "YOUR_ALLOWED_ORIGIN" with the actual allowed origin(s).
header("Access-Control-Allow-Methods: POST");
header("Access-Control-Allow-Headers: Content-Type");
echo json_encode($results);
