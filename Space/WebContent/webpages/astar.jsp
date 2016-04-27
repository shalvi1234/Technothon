<%@ taglib prefix="c" uri="http://www.springframework.org/tags"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>

<head>

<title>Star Details</title>

<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta name="description" content="">
<meta name="author" content="">
<link rel="shortcut icon" href="resources/images/favicon.ico"
	type="image/x-icon">

<link href="<c:url value="resources/css/planetpagestyle.css"/>"
	rel="stylesheet" type="text/css" />
<link href="<c:url value="resources/css/style.css"/>"
	rel="stylesheet" type="text/css">


<link href="<c:url value="resources/css/bootstrap.min.css"/>"
	rel="stylesheet">
<link href="<c:url value="resources/css/shop-homepage.css"/>"
	rel="stylesheet">
<link href="<c:url value="resources/css/ourStyles.css"/>"
	rel="stylesheet">
<link href="<c:url value="resources/css/search.css"/>" rel="stylesheet">

<script
	src="<c:url value="resources/js/jquery.js"/>"></script>

<script src="<c:url value="resources/js/angular.min.js"/>"></script>
<script src="<c:url value="resources/Scripts/astar.js"/>"></script>
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
						<li>Name of Star :<i ng-bind="starData.target.name"></i></li>
						<br>
						<li>To view more about this star:Click---><a
							href="{{starData.service.href}}"><i
								ng-bind="starData.service.href"></i></a></li>
						<br>
						<li>Coordinates Reference Frame (coordsys): <i
							ng-bind="starData.coordsys"></i>
						</li>
						<br>
						<li><details close> <summary>Equinox : <i
								ng-bind="starData.equinox"> </i></summary>
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
						<br>
						<li><details close> <summary> Right
							Ascension:- decimal:<i ng-bind="starData.ra.decimal"></i>, h:<i
								ng-bind="starData.ra.h"></i>,m:<i ng-bind="starData.ra.m"></i>
							s:<i ng-bind="starData.ra.s"></i> </summary> Right ascension (abbreviated
							RA) is the angular distance measured eastward along the celestial
							equator from the vernal equinox to the hour circle of the point
							in question. </li>
						<br>
						<li><details close> <summary>
							Declination:- decimal:<i ng-bind="starData.dec.decimal"></i>, h:<i
								ng-bind="starData.dec.h"></i>,m:<i ng-bind="starData.dec.m"></i>
							s:<i ng-bind="starData.dec.s"></i> </summary> In astronomy, declination
							(abbreviated dec) is one of the two angles that locate a point on
							the celestial sphere in the equatorial coordinate system, the
							other being hour angle. </details></li>
						<br>

						<li>Location in Galactic Coordinates :- lon :<i
							ng-bind="starData.galactic.lon"></i>, lat :<i
							ng-bind="starData.galactic.lat"></i>
						</li>
						<br>
						<li><details close> <summary> Julian Day
							:<i ng-bind="starData.jd"></i> </summary> Julian day is the continuous
							count of days since the beginning of the Julian Period used
							primarily by astronomers. </details></li>
						<br>
						<li>To know more on the star: <a
							href="{{starData.image.href}}"><i
								ng-bind="starData.image.href"></i></a></li>
						<br>
					</ul>
				</div>
				<div class="col-xs-6 col-md-6">
					<img src="{{starData.image.src}}" id="imgFrmJsonData">
				</div>
				
			</div>
			
		</div>
		<div class="row" ng-show="noConnection">
			<center><h1>Please check your proxy connection.Connection refused!</h1></center>
			</div>
			
			<div class="row" ng-show="noData">
			<center><h1>No information found for the entered Star!</h1><center>
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