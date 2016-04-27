<%@ taglib prefix="c" uri="http://www.springframework.org/tags" %>
<!DOCTYPE html>
<html lang="en">
<head>
  <!-- Theme Made By www.w3schools.com - No Copyright -->
  <title>Auth-Error</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.0/jquery.min.js"></script>
  <script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>
      <!-- Bootstrap Core CSS -->
    <link href="resources/css/bootstrap.min.css" rel="stylesheet">
<link rel="shortcut icon" href="resources/images/favicon.ico"
	type="image/x-icon">
    <!-- Custom CSS -->
    <link href="resources/css/shop-homepage.css" rel="stylesheet">
  <style>
  .bg-1 { 
      background-color: black; /* Green */
      color: white;
  }
  </style>
   <script src="//code.jquery.com/jquery-1.10.2.js"></script>
<script> 
$(function(){
  $("#header").load("resources/template/header.html"); 
  $("#footer").load("resources/template/footer.html"); 
  $("#fev").load("resources/template/logof.html");
});

$(document).ready(function(){
 //$("#autherror").attr("src","../../../resources/images/401error.png");
 
	var path=document.getElementById("autherror").src;//;("#autherror").src;
	var extraURL=path.substring(path.lastIndexOf("Space")+6,path.lastIndexOf("resources"));
	var newPath=path.replace(extraURL,"");
	document.getElementById("autherror").src=newPath;
	
	
	var homePath=document.getElementById("home").href;
	var extraHomeURL=homePath.substring(homePath.lastIndexOf("Space")+6,homePath.lastIndexOf("login"));
	var newHomePath=homePath.replace(extraHomeURL,"");
	document.getElementById("home").href=newHomePath;
	
});
</script>

</head>
<span id="fev"></span>
<body>

<div id="header"></div>
<div class="bg-1">
  <div class="container text-center">
    <h3>Who Are you?</h3>
    
    <img id="autherror" src="../../resources/images/401error.png" width="350" height="350">
    <h3>Aunthentication required or insufficient access permissions!</h3>
     <h3>Go back to home.....<a id="home" href="../../login?action=page">Home</a></h3>
  </div>
</div>
  <div id="footer"></div>
</body>
</html>
