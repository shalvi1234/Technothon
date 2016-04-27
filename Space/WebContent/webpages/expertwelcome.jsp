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

<link rel="stylesheet" href="<c:url value="resources/css/ExpertsStyle.css"/>" type="text/css">
<link rel="shortcut icon" href="resources/images/favicon.ico"
	type="image/x-icon">
 <link href="<c:url value="resources/css/bootstrap.min.css"/>" rel="stylesheet">
  <link href="<c:url value="resources/css/shop-homepage.css"/>" rel="stylesheet">
  <script src="<c:url value="resources/js/jquery.js"/>"></script>
<script src="<c:url value="resources/js/angular.min.js"/>"></script>
<link href="resources/css/ourStyles.css"  rel="stylesheet">
<%-- <script type="text/javascript" src="<c:url value="resources/Scripts/expertwelcome.js"/>"></script> --%>
    <script> 
		$(function(){
		  $("#header").load("resources/template/header.html"); 
		  $("#footer").load("resources/template/footer.html"); 
		  $("#fev").load("resources/template/logof.html");
		  
		});
	</script>
	<span id="fev"></span>
    <!-- jQuery -->
    

    <!-- Bootstrap Core JavaScript -->
    <script src="<c:url value="resources/js/bootstrap.min.js"/>"></script>
    <script type="text/javascript">
    
    var app = angular.module('myApp', []);
    app.controller('myCtrl', function($scope, $http) {
        $http.get("e/question/everything").then(function(response) {
            $scope.myData = response.data;
            console.log("inside get question"+myData);
        });
    });
    app.controller('newCtrl', function($scope, $http) {
	    $http.get("getActor").then(function(response) {
	    	console.log("actor name"+response)
	        $scope.myData1 = response.data;
	    });
	});


/*      function addanswer(clickId) {
    	//how to get expert id 
    	//question and answerDate has to be set at back end.
    		var answer1=document.getElementById(clickId).value
    		var questionid=clickId;
    		
    		$.post("e/answer/add",
    			    {
    			        questionId: questionid,
    			        answer: answer1
    			    },
    			    function(data, status){
    			    	document.getElementById(clickId).nextSibling.innerHTML("Your answer is posted.");
    			    });
    		
    	} */
    	
    </script>
<style>
<!--
h4,h2{
color: white;
}
-->
</style>
<body ng-app="myApp" >
<div id="header"></div>

	<div id="user"  class="container">
   <div id="outerpanel" class="panel panel-default">
  <div class="panel-body">
  <div  ng-controller="newCtrl"><h2 align="center">Welcome {{myData1.firstName}}</h2>
	<div ng-controller="myCtrl">
	
		<div style="padding-top: 50px"></div>
		
		 <div class="col-md-4" ><h4><strong><ins>Question</ins></strong></h4></div>
		  <div class="col-md-8"><h4><strong><ins>Answer</ins></strong></h4></div><br><br>
			<div ng-repeat="(key,value) in myData">
			<div class="panel panel-default" id="question"><div class="panel-body">	<div class="row">
			<div id="scroll" class="pre-scrollable">
				 <div class="col-md-4">
				 <p>{{value.question.question}} </p>
					 </div>
					 <div class="col-md-8" align="left">
					<div ng-repeat="(key1,value1) in value.answers">
					
					<p>{{value1.answer}} {{value1.actor.firstName}} </p>
					
				
					</div>
				<div>
					<textarea onkeyup="manageSubmitButton(this.id)" required="required" rows="4" cols="50" ng-attr-id="{{ 'textArea-' +  myData[$index].question.questionId}}" name="answer"></textarea><input value="Submit Answer" disabled="disabled" type="submit" id="{{myData[$index].question.questionId}}" name="submitanswer" onclick="addanswer(this.id)" data-toggle="modal" data-target="#myModal"></input>
					<div style="color: black;display:none" ng-attr-id="{{ 'messageArea-' +  myData[$index].question.questionId}}" >You excceded max length</div>
				</div>
			
				  <div class="modal fade" id="myModal" role="dialog">
				    <div class="modal-dialog">
				    
				      <!-- Modal content-->
				      <div class="modal-content">
				        <div class="modal-header">
				          <button type="button" class="close" data-dismiss="modal">&times;</button>
				          <b><p class="modal-title">Hey {{myData1.firstName}}</p></b>
				        </div>
				        <div class="modal-body">
				          <!-- <p>Some text in the modal.</p> -->
				         <p> Your answer has been posted!!!!<p>
				        </div>
				        <div class="modal-footer">
				          <button type="button" class="btn btn-default" data-dismiss="modal" onclick="reload()">Close</button>
				        </div>
				      </div>
				      
				    </div>
				  </div>
					</div>
					
					  <br>
					<br>
				</div></div></div>
				</div>
			</div>
		

	</div>
	</div>
</div>
</div>


<!-- Footer -->
      <div id="footer"></div>

 </div>
    <!-- /.container -->

<script type="text/javascript">


function manageSubmitButton(id){
	var answer1=document.getElementById(id).value;
	var buttonId=id.replace("textArea-", "");
	if(answer1.length>255){
		console.log("greater than 255");
		var messageDivId=id.replace("text", "message");
		document.getElementById(buttonId).disabled=true;
		$("#"+messageDivId).show();
		
	}
	else{
		if(answer1.length<10){
			
			document.getElementById(buttonId).disabled=true;
		}
		else{
			
			document.getElementById(buttonId).disabled=false;
		}
	}


}


function addanswer(clickId) {
	//how to get expert id 
	//question and answerDate has to be set at back end.
	
	
		var answer1=document.getElementById("textArea-"+clickId).value;
		var questionid=clickId;
		if(answer1.length<10){
			return;	
		}
		$.post("e/answer/add",
			    {
			        questionId: questionid,
			        answer: answer1
			    },
			    function(data, status){
			        
			    });
	} 
	function reload(){
		location.reload();
	}
	</script>

</body>
</html>