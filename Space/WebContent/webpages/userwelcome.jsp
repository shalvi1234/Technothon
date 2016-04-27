<%@ taglib prefix="c" uri="http://www.springframework.org/tags" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta name="description" content="">
<meta name="author" content="">

<title>Welcome</title>

<link href="<c:url value="resources/css/ourStyles.css"/>"   rel="stylesheet">
<link href="<c:url value="resources/css/bootstrap.min.css"/>" rel="stylesheet">
  <link href="<c:url value="resources/css/shop-homepage.css"/>" rel="stylesheet">
  <link href="resources/css/ourStyles.css"  rel="stylesheet">
<link rel="stylesheet" href="<c:url value="resources/css/ExpertsStyle.css"/>">
<link rel="shortcut icon" href="resources/images/favicon.ico"
	type="image/x-icon">

<%-- <script type="text/javascript" src="<c:url value="resources/Scripts/userwelcome.js"/>"></script> --%>
<script src="<c:url value="resources/js/angular.min.js"/>"></script>
	<script src="resources/js/jquery.js"></script>
 <script> 
		$(function(){
		  $("#header").load("resources/template/header.html"); 
		  $("#footer").load("resources/template/footer.html");
		  $("#fev").load("resources/template/logof.html");
		});
	</script>

	
	<script type="text/javascript">
	var app = angular.module('myApp', []);
	
	
	app.controller('myCtrl', function($scope, $http) {
	    $http.get("u/question/getmyquestions").then(function(response) {
	    	console.log("data from u/question/getmyquestions"+response)
	        $scope.myData = response.data;
	    	$scope.noQuestions=false;
	    	
	    	
	    	var messageString=response.data.message;
	        if(messageString){
	            if(messageString=="No Questions yet")
	            	$scope.noQuestions=true;
	            else
	            	$scope.noQuestions=false;
	            }
	    	console.log("get my questions"+response.data);
	    });
	    
	});
	app.controller('newCtrl', function($scope, $http) {
	    $http.get("getActor").then(function(response) {
	    	console.log("actor name"+response)
	        $scope.myData1 = response.data;
	    });
	});
 
	</script>
	<span id="fev"></span>
</head>

<body ng-app="myApp">

	
<div id="header"></div>
	
	<div id="user"  class="container">
   <div id="outerpanel" class="panel panel-default">
  <div class="panel-body">
  <img src="<c:url value="resources/images/userwelcome.png"/>" align="right" />
	
	<div  ng-controller="newCtrl">
	<h2>Hi {{myData1.firstName}}<br><center>Welcome To SpaceXplorer</center></h2>
	</div> 
	<div  ng-controller="myCtrl">
		<div style="padding-top: 50px"></div>
		<div ng-hide="noQuestions">
		 <div class="col-md-6" ><p><strong>Question</strong></p></div>
		  <div class="col-md-6"><p><strong>Answer</strong></p></div><br><br>
			<div ng-repeat="(key,value) in myData">
			<div class="panel panel-default" id="question"><div class="panel-body">	<div class="row">
			<div id="scroll"class="pre-scrollable">
				 <div class="col-md-6">
				 <p>{{value.question.question}}  </p>
				  
					 </div>
					 
					 <div class="col-md-6">
					  <p ng-hide={{value.hasAnswers}}>No answers yet!</p>
					<div ng-repeat="(key1,value1) in value.answers">
					<div class="panel panel-default" id="answer"><div class="panel-body">
					<p>{{value1.answer}}</p>
					
					
					</div>
					</div>
					</div>
					  <br>
					<br>
				</div>
				</div></div></div>
			</div>
		

	</div>
</div>
<div ng-show="noQuestions">
<h2 style="color: white;">Sorry!You have not asked any Questions to display.</h2>
</div>
</div>
</div>

</div>
<!-- Footer -->
     
<div id="footer"></div>
 </div>
    <!-- /.container -->

   
   

</body>
</html>