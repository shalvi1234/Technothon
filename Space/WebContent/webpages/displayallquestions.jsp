<%@ taglib prefix="c" uri="http://www.springframework.org/tags" %>
<!DOCTYPE html>
<html lang="en">

<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta name="description" content="">
<meta name="author" content="">

<title>Questions</title>
<script src="<c:url value="../resources/js/angular.min.js"/>"></script>
 <link href="<c:url value="../resources/css/shop-homepage.css"/>" rel="stylesheet">
  <link href="<c:url value="../resources/css/ourStyles.css"/>" rel="stylesheet">
   <link href="<c:url value="../resources/css/ExpertsStyle.css"/>" rel="stylesheet">
    <link href="<c:url value="../resources/css/bootstrap.min.css"/>" rel="stylesheet">
  <link rel="shortcut icon" href="../resources/images/favicon.ico"
	type="image/x-icon">  
<link rel="stylesheet" href="<c:url value="../resources/css/ExpertsStyle.css"/>" type="text/css">
<!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
<!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
<!--[if lt IE 9]>
        <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
        <script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
    <![endif]-->
 <script src="//code.jquery.com/jquery-1.10.2.js"></script>
        <!-- jQuery -->
    <script src="<c:url value="../resources/js/jquery.js"/>"></script>

    <!-- Bootstrap Core JavaScript -->
    <script src="<c:url value="../resources/js/bootstrap.min.js"/>"></script>
    <script type="text/javascript" src="<c:url value="../resources/Scripts/ExpertController.js"/>"></script>
<!-- <script> 
$(function(){
  $("#header").load("../resources/template/header.html"); 
  $("#footer").load("../resources/template/footer.html"); 
  $("#fev").load("../resources/template/logof.html");
});
</script> -->
<script>
$(document).ready(function(){
	
	function checkLogout(){
		console.log("Inside checklogout");
		$.get("../getActor", function(data, status){
	        console.log("Data: " + data + "\nStatus: " + status);
	        var jdata=JSON.parse(data);
	        if(jdata.msg=="not logged in"){
	        	console.log("inside");
	        	$("#logout").css("visibility","hidden");	
	        }
	        
	        
	    });
	}
	checkLogout();
	
	$("#logout").click(checkLogout);
	

});
</script>
<fev>
<link rel="shortcut icon" href="../../resources/images/favicon.ico"
	type="image/x-icon">
</fev>
<!-- <span id="fev"></span> -->
</head>


<body>

<!-- 	<div id="header"></div> -->
	<!-- Navigation -->
    <nav class="navbar navbar-inverse navbar-fixed-top" role="navigation">
        <div class="container">
            <!-- Brand and toggle get grouped for better mobile display -->
            <div class="navbar-header">
                <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1">
                    <span class="sr-only">Toggle navigation</span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                </button>
                <a class="navbar-brand" href="#">
                    <img src="../resources/images/Drawing4.jpeg" alt="" class="img-responsive">
                </a>
            </div>
  
     	  <!-- Collect the nav links, forms, and other content for toggling -->
            <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
                <ul class="nav navbar-nav">
                   <li>
                        <a href="../login?action=page" >HOME</a>
                   </li>
                   <li>
                        <a href="../gallery">GALLERY</a>
                   </li>
                   <li class="dropdown"><a class="dropdown-toggle"
						data-toggle="dropdown" href="#">INFORMATION <span class="caret"></span></a>
						<ul class="dropdown-menu">
							<li><a href="../planets">PLANETS</a></li>
							<li><a href="../stars">STARS</a></li>
							<li><a href="../comets">COMETS</a></li>
							<li><a href="../satellites">SATELLITES</a></li>
							<li><a href="../meteors">METEORS</a></li>
							<li><a href="../asteroids">ASTEROIDS</a></li>
							<!-- <li><a href="query?action=page">ISSI</a></li> -->
						</ul>
					</li>
                    <li>
                        <a href="../u/question/add">ASK US</a>
                    </li>
                    <li>
                        <a href="../query?action=page">CONTACT US</a>
                    </li>
                    <li>
                        <a href="../aboutus">ABOUT US</a>
                    </li>
                    <li>
                        <a id="logout" href="../logout">LOG OUT</a>
                    </li>
                </ul>
            </div>
            <!-- /.navbar-collapse -->
        </div>
        <!-- /.container -->
    </nav>
	<div class="container">
   <div class="panel panel-default">
  <div class="panel-body" style="background-image:url('../resources/images/box1.jpg');">
	<div ng-app="myApp" ng-controller="myCtrl">
	<h2>Recently asked questions</h2>	
		<div style="padding-top: 50px"></div>
		<div class="col-md-2" ><p><strong>User</strong></p></div>
		 <div class="col-md-8" ><p><strong>Question</strong></p></div>
		  <div class="col-md-2"><p><strong>Answer</strong></p></div><br><br>
			<div ng-repeat="(key,value) in myData">
		<div class="panel panel-default" id="question"><div class="panel-body">	<div class="row">
			
				 <div class="col-md-2">
	
				 <p>{{value.actor.firstName}}</p>
					 </div>
					 <div class="col-md-8">
					<p>{{value.question}} </p> <div>Tag:{{value.tag}}
				</div>
					</div>
					
					 <div class="col-md-2">
				
					<button onclick="myFunction(this.id)"  id={{myData[$index].questionId}} >view answer</button> <br>
					<br>
				</div>
				
				</div>
				</div>
			</div>
		

	</div>
</div>
</div>
</div>


    </div>
    <!-- /.container -->

  <footer>
            <div class="row">
                <div class="col-lg-12">
                    <p style="color: white;">Copyright &copy; SpaceXplorer 2016</p>
                </div>
            </div>
        </footer>
<!-- 
  <div id="footer"></div> -->

</body>
</html>