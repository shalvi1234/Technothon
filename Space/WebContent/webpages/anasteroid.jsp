<%@ taglib prefix="c" uri="http://www.springframework.org/tags"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>

<head>

<title>Asteroid Details</title>

<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta name="description" content="">
<meta name="author" content="">
<link rel="shortcut icon" href="resources/images/favicon.ico"
	type="image/x-icon">
<link href="<c:url value="resources/css/planetpagestyle.css"/>"
	rel="stylesheet" type="text/css" />

<link href="<c:url value="resources/css/bootstrap.min.css"/>"
	rel="stylesheet">
<link href="<c:url value="resources/css/shop-homepage.css"/>"
	rel="stylesheet">

<link href="<c:url value="resources/css/ourStyles.css"/>"
	rel="stylesheet">
<link href="<c:url value="resources/css/search.css"/>" rel="stylesheet">

<script src="<c:url value="resources/js/angular.min.js"/>"></script>
 <script src="resources/js/jquery.js"></script>
 <script src="resources/js/bootstrap.min.js"></script>
<script src="<c:url value="resources/Scripts/anasteroid.js"/>"></script>
<script
	src="http://ajax.googleapis.com/ajax/libs/angularjs/1.4.8/angular-sanitize.js"></script>
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
						<li>Name of asteroid :<i ng-bind="asteroidData.target.name"></i></li>
						<li>To view more about this asteroid:Click---><a
							href="{{asteroidData.service.href}}">here</a></li>
						<li>Coordinates Reference Frame (coordsys): <i
							ng-bind="asteroidData.coordsys"></i>
						</li>
						<li><details close> <summary>Equinox : <i
								ng-bind="asteroidData.equinox"> </i></summary>
							<p>Julian equinoxes/epochs</p>

							<p>In astronomy, equinox is a moment in time at which the
								vernal point, celestial equator, and other such elements are
								taken to be used in the definition of a celestial coordinate
								system. The position at other equinoxes can be computed by
								taking into account precession, nutation and aberration, which
								directly affect e.g. right ascension and declination.</p>

							<p>J2000-This is equivalent to January 1, 2000, 11:59:27.816
								TAI or January 1, 2000, 11:58:55.816 UTC.</p>

							<p>Julian epochs are calculated according to:</p>
							J = 2000.0 + (Julian date -2451545.0)/365.25 </details></li>
						<li><details close> <summary> Right
							Ascension:- decimal:<i ng-bind="asteroidData.ra.decimal"></i>, h:<i
								ng-bind="asteroidData.ra.h"></i>,m:<i
								ng-bind="asteroidData.ra.m"></i> s:<i
								ng-bind="asteroidData.ra.s"></i> </summary> Right ascension (abbreviated
							RA) is the angular distance measured eastward along the celestial
							equator from the vernal equinox to the hour circle of the point
							in question. </details></li>
						<li><details close> <summary>
							Declination:- decimal:<i ng-bind="asteroidData.dec.decimal"></i>,
							h:<i ng-bind="asteroidData.dec.h"></i>,m:<i
								ng-bind="asteroidData.dec.m"></i> s:<i
								ng-bind="asteroidData.dec.s"></i> </summary> In astronomy, declination
							(abbreviated dec) is one of the two angles that locate a point on
							the celestial sphere in the equatorial coordinate system, the
							other being hour angle. </details></li>

						<li>Location in Galactic Coordinates :- lon :<i
							ng-bind="asteroidData.galactic.lon"></i>, lat :<i
							ng-bind="asteroidData.galactic.lat"></i>
						</li>
						<li><details close> <summary> Julian Day
							:<i ng-bind="asteroidData.jd"></i> </summary> Julian day is the continuous
							count of days since the beginning of the Julian Period used
							primarily by astronomers. </details></li>
						<li>To know more on the asteroid: <a
							href="{{asteroidData.image.href}}"><i
								ng-bind="asteroidData.image.href"></i></a></li>
					</ul>

					<br> <br>
				</div>
				<div class="col-xs-6 col-md-6">
					<img src="{{asteroidData.image.src}}" id="imgFrmJsonData">
				</div>
			</div>
			</div>
			<div class="row" ng-show="noConnection">
			<center><h1>Please check your proxy connection.Connection refused!</h1></center>
			</div>
			
			<div class="row" ng-show="noData">
			<center><h1>No information found for the entered asteroid!</h1><center>
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
