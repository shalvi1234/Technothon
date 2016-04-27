<%@ taglib prefix="c" uri="http://www.springframework.org/tags" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
 <script src="http://ajax.googleapis.com/ajax/libs/angularjs/1.4.8/angular.min.js"></script>
<title>Picture of Day</title>

 <link href="<c:url value="resources/css/ourStyles.css"/>"   rel="stylesheet">
 <link rel="shortcut icon" href="resources/images/favicon.ico"
	type="image/x-icon">
 <script src="resources/Scripts/ApodController.js" ></script>
  <script src="//code.jquery.com/jquery-1.10.2.js"></script>
      <!-- Bootstrap Core CSS -->
    <link href="resources/css/bootstrap.min.css" rel="stylesheet">

    <!-- Custom CSS -->
    <link href="resources/css/shop-homepage.css" rel="stylesheet">
      <!-- Bootstrap Core CSS -->
    <link href="resources/css/bootstrap.min.css" rel="stylesheet">

    <!-- Custom CSS -->
    <link href="resources/css/shop-homepage.css" rel="stylesheet">
    <style >
		 #apodDesc{
			background-image:url('resources/images/box1.jpg');
			color: white;
			text-align:left;
		}
		p{
		text-align: justify;
		}
		
    </style>
<script> 
$(function(){
  $("#header").load("<c:url value="resources/template/header.html"/>"); 
  $("#footer").load("<c:url value="resources/template/footer.html"/>"); 
  $("#fev").load("resources/template/logof.html");
});
</script>
<span id="fev"></span>
</head>
<body>
<div id="header"></div>

<div ng-app="apodApp" ng-controller="apodCtrl" >
	<div class="container-fluid">
	  <h1 style="color: white;"><center>{{myData.title}}</center></h1>
	  <p></p>
	  <div class="row" ng-hide="noConnection" >
	 
	    <div id="apodDesc" class="col-md-4 col-sm-12" style="height:auto;">
		   <h2>{{myData.title}} means...</h2>
		    <h4>
			    <p>
			    {{myData.explanation}}	
			    </p>
		    </h4>
		    <br><br><br><br><br>
		     Photograher:{{myData.copyright}}
		    <br>
		    Clicked on:{{myData.date}}
		    <br>
		    <br>
		    Note: The information set forth herein is furnished free of charge and based on technical data that nasa.gov.
					believes to be reliable. It is intended for use by people at their own risk. Because conditions
					of use are outside our control, we make no warranties, express or implied, and assure no liability in connection with
					any use of this information. Nothing herein is to be taken as license to operate under or a recommendation to
					infringe any patents.
 
		</div>
	    <div class="col-md-8 col-sm-12" style="height:auto;">
	    	<img src="{{myimgUrl}}" id="apodimg" ></div>
	  	</div>
	
	<div class="row" ng-show="noConnection">
			<h1>Poor Connection!</h1>
			</div>
			
			<div class="row" ng-show="noData">
			<center><h1>No information found for the entered comet!</h1><center>
			</div>
	</div>
</div>
  <div id="footer"></div>
</body>
</html>