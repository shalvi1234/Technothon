<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://www.springframework.org/tags"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<link rel="shortcut icon" href="../../../resources/images/favicon.ico"
	type="image/x-icon">
<link href="<c:url value="../../../resources/css/ourStyles.css"/>"
	rel="stylesheet">
<link href="<c:url value="../../../resources/css/bootstrap.min.css"/>"
	rel="stylesheet">
<link href="<c:url value="../../../resources/css/shop-homepage.css"/>"
	rel="stylesheet">
<script src="<c:url value="../../../resources/js/angular.min.js"/>"></script>
<script src="../../../resources/js/jquery.js"></script>
<link rel="stylesheet"
	href="<c:url value="../../../resources/css/ExpertsStyle.css"/>">
<script
	src="http://ajax.googleapis.com/ajax/libs/angularjs/1.4.8/angular.min.js"></script>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>SpaceXplorer-Answer</title>
<%-- <script type="text/javascript"  src="<c:url value="resources/Scripts/answersofquestionController.js"/>"></script> --%>

<script type="text/javascript">
	var app = angular.module('myApp', []);
	app.controller('myCtrl', function($scope, $http) {
		questionId = localStorage.getItem("questionId");
		console.log("in answersofquestion")
		$http.get("Space/../../../../u/question/getAnswer/" + questionId).then(
				function(response) {
					$scope.myData = response.data;
					var messageString=response.data.message;
			        if(messageString){
			            if(messageString=="No Questions yet")
			            	$scope.noQuestions=true;
			            else
			            	$scope.noQuestions=false;
			            }
			        $scope.hasAnswers=response.data.hasAnswers;
			      
			    	console.log("get my questions"+response.data);
				});
	});
</script>
<script src="<c:url value="../../../resources/js/angular.min.js"/>"></script>
<script src="../../../resources/js/jquery.js"></script>
<!-- <script>
	$(function() {
		$("#header").load("../../../resources/template/header.html");
		$("#footer").load("../../../resources/template/footer.html");
		$("#fev").load("resources/template/logof.html");
	});
</script>
<span id="fev"></span> -->
<script>
$(document).ready(function(){
	
	function checkLogout(){
		console.log("Inside checklogout");
		$.get("../../../getActor", function(data, status){
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
<link rel="shortcut icon" href="../../../resources/images/favicon.ico"
	type="image/x-icon">
</fev>
</head>
<body>
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
                    <img src="../../../resources/images/Drawing4.jpeg" alt="" class="img-responsive">
                </a>
            </div>
  
     	  <!-- Collect the nav links, forms, and other content for toggling -->
            <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
                <ul class="nav navbar-nav">
                   <li>
                        <a href="../../../login?action=page" >HOME</a>
                   </li>
                   <li>
                        <a href="../../../gallery">GALLERY</a>
                   </li>
                   <li class="dropdown"><a class="dropdown-toggle"
						data-toggle="dropdown" href="#">INFORMATION <span class="caret"></span></a>
						<ul class="dropdown-menu">
							<li><a href="../../../planets">PLANETS</a></li>
							<li><a href="../../../stars">STARS</a></li>
							<li><a href="../../../comets">COMETS</a></li>
							<li><a href="../../../satellites">SATELLITES</a></li>
							<li><a href="../../../meteors">METEORS</a></li>
							<li><a href="../../../asteroids">ASTEROIDS</a></li>
							<!-- <li><a href="query?action=page">ISSI</a></li> -->
						</ul>
					</li>
                    <li>
                        <a href="../../../u/question/add">ASK US</a>
                    </li>
                    <li>
                        <a href="../../../query?action=page">CONTACT US</a>
                    </li>
                    <li>
                        <a href="../../../aboutus">ABOUT US</a>
                    </li>
                    <li>
                        <a id="logout" href="../../../logout">LOG OUT</a>
                    </li>
                </ul>
            </div>
            <!-- /.navbar-collapse -->
        </div>
        <!-- /.container -->
    </nav>
<!-- 	<div id="header"></div> -->
	<div id="user" class="container">
		<div id="outerpanel" style="height: 500px" class="panel panel-default">
			<div class="panel-body">
				<div ng-app="myApp" ng-controller="myCtrl"
					style="margin-right: 10px; margin-left: 40px;">
					
					 <div class="col-md-6" ><p><strong>Question</strong></p></div>
		  <div class="col-md-6"><p><strong>Answer</strong></p></div><br><br>
					<div class="panel panel-default" id="question">
						<div class="panel-body">
							<div class="row">
								<div id="scroll" class="pre-scrollable">
									<div class="col-md-6">{{myData.question.question}}</div>
									<div class="col-md-6">
								
									 <p ng-hide="hasAnswers" >No answers yet!</p>
										<div ng-repeat="(key1,value1) in myData.answers">
											<div class="panel panel-default" id="answer">
												<div class="panel-body">

													<p>{{value1.answer}}</p>
												</div>
											</div>
										</div>
									</div>

								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
  <footer>
            <div class="row">
                <div class="col-lg-12">
                    <p style="color: white;">Copyright &copy; SpaceXplorer 2016</p>
                </div>
            </div>
        </footer>
<!-- 	<div id="footer"></div> -->
</body>
</html>