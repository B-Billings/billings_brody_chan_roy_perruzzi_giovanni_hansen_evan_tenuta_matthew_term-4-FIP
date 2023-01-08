<?php

header("Access-Control-Allow-Origin: *"); 
header("Content-Type: application/json; charset=UTF-8");

if($_POST){ 

    $receipent = "";
    $subject = "Email from my *****";
    $visitor_name= "";
    $visitor_email="";
    $message="";
    $fail = array();

    if(isset($_POST['firstname']) && !empty($_POST['firstname'])) {  
        $visitor_name = filter_var($_POST['firstname'],FILTER_SANITIZE_STRING);

    }else{
 
        array_push($fail, "firstname");
    }

    if(isset($_POST['lastname'])&& !empty($_POST['lastname'])){

        $visitor_name .= filter_var($_POST['lastname'], FILTER_SANITIZE_STRING);
    }
    else{
        array_push($fail, "lastname");
    }

    if(isset($_POST['email']) && !empty($_POST['email'])){
        $email = str_replace(array("\r", "\n", "%0a", "%0d"), "", $_POST['email']);
        $visitor_email = filter_var($email, FILTER_VALIDATE_EMAIL);   
    }else{
        array_push($fail, "email");
    }

    if(isset($_POST['message']) && !empty($_POST['message'])){
        $clean = filter_var($_POST['message'], FILTER_SANITIZE_STRING);
        $message = htmlspecialchars($clean);
    }else{
        array_push($fail, "message");
    }

    $headers = 'From: '.$visitor_email."\r\n" .'Reply-to: '.$visitor_email."\r\n" .'X-Mailer: PHP/' .phpversion();

    if(count($fail)==0){
        mail($receipent, $subject, $message, $headers);
        $results['message'] = sprintf("Thank you for contacting us, %s . We will respond within 24 hours.", $visitor_name); 
    }else{
        header("HTTP/1.1 488 You DID NOT fill out the form correctly");
        die(json_encode(['message'=> $fail]));
    }


}else{  
    $results['message'] = "please fill out the form correct";
}

echo json_encode($results);

?>