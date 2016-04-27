<%@ taglib prefix="c" uri="http://www.springframework.org/tags" %>
<!DOCTYPE html>
<html lang="en">
<head>
  <!-- Theme Made By www.w3schools.com - No Copyright -->
  <title>404 error page</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.0/jquery.min.js"></script>
  <script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>
   <script src="//code.jquery.com/jquery-1.10.2.js"></script>
       <!-- Bootstrap Core CSS -->
    <link href="resources/css/bootstrap.min.css" rel="stylesheet">
<link rel="shortcut icon" href="resources/images/favicon.ico"
	type="image/x-icon">
    <!-- Custom CSS -->
    <link href="resources/css/shop-homepage.css" rel="stylesheet">
<script> 
$(function(){
  $("#header").load("resources/template/header.html"); 
  $("#footer").load("resources/template/footer.html"); 
  $("#fev").load("resources/template/logof.html");
});
</script>
  <style>
  .bg-1 { 
      background-color: black; /* Green */
      color: white;
  }
  </style>
 <span id="fev"></span>
</head>
<body>
<div id="header"></div>
<div class="bg-1">
  <div class="container text-center">
    <h3>The requested page was not found on the server!</h3>
 
    <img src="<c:url value="resources/images/404error.jpg"/>" width="350" height="350">
    <h3>Please check the entered url...</h3>
    <h3>Go back to home.....<a href="login?action=page">Home</a></h3>
    
  </div>
</div>
  <div id="footer"></div>
</body>
</html>
