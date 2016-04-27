<%@ taglib prefix="c" uri="http://www.springframework.org/tags"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>

<head>

<title>Planet Details</title>
<link rel="shortcut icon" href="resources/images/favicon.ico"
	type="image/x-icon">
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta name="description" content="">
<meta name="author" content="">

<link href="<c:url value="resources/css/planetpagestyle.css"/>"
	rel="stylesheet" type="text/css" />

<link href="<c:url value="resources/css/bootstrap.min.css"/>"
	rel="stylesheet">
<link href="<c:url value="resources/css/shop-homepage.css"/>"
	rel="stylesheet">
<link href="<c:url value="resources/css/ourStyles.css"/>"
	rel="stylesheet">
<link href="<c:url value="resources/css/style.css"/>"
	rel="stylesheet" type="text/css">
<link href="<c:url value="resources/css/search.css"/>" rel="stylesheet">


<script src="<c:url value="resources/js/angular.min.js"/>"></script>
 <script src="resources/js/jquery.js"></script>
 <script src="resources/js/bootstrap.min.js"></script>
<script
	src="http://ajax.googleapis.com/ajax/libs/angularjs/1.4.8/angular-sanitize.js"></script>
<script src="<c:url value="resources/Scripts/aplanet.js"/>"
	type="text/javascript"></script>
 <script> 
		$(function(){
		  $("#header").load("resources/template/header.html"); 
		  $("#footer").load("resources/template/footer.html"); 
		  $("#fev").load("resources/template/logof.html");
		});
	</script>


<span id="fev"></span>

</head>

<body id="searchPageBody">

	<div id="header"></div>

	<div style="margin-left: 20px; margin-top: 80px" id="write">
		<p></p>
	</div>

	<div ng-app="myApp" ng-controller="myCtrl">
		<div class="container-fluid">
			<div class="row" ng-hide="noConnection" >
			<div ng-hide="noData">
				<div class="col-xs-12 col-md-6 ">
					<ul>
						<li>Name of Planet :<i ng-bind="planetData.target.name"></i></li>
						<li>To view more about this planet:Click---><a
							href="{{myData.service.href}}"><i
								ng-bind="planetData.service.href"></i></a></li>
						<br>
						<b id="h">Basic Description About the planet:</b>

						<p ng-bind-html="planetData.message"></p>
						<br>
						<br>
						<li>To know more on the planet: <a
							href="{{planetData.image.href}}"><i
								ng-bind="planetData.image.href"></i></a></li>
					</ul>
				</div>
				<div class="col-xs-6 col-md-6">
					<img src="{{planetData.image.src}}" id="imgFrmJsonData">
				</div>
			</div>
		</div>
		<div class="row" ng-show="noConnection">
			<center><h1>Please check your proxy connection.Connection refused!</h1></center>
			</div>
			
			<div class="row" ng-show="noData">
			<center><h1>No information found for the entered planet!</h1><center>
			</div>
			 Note: The information set forth herein is furnished free of charge and based on technical data that www.strudel.org.uk.
					believes to be reliable. It is intended for use by people at their own risk. Because conditions
					of use are outside our control, we make no warranties, express or implied, and assure no liability in connection with
					any use of this information. Nothing herein is to be taken as license to operate under or a recommendation to
					infringe any patents.
		</div>
	</div>
	<div id="footer"></div>
</body>
</html>