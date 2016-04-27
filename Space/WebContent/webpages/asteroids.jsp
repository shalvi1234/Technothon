<%@ taglib prefix="c" uri="http://www.springframework.org/tags" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Asteroids</title>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta name="description" content="">
<meta name="author" content="">

<script src="<c:url value="resources/js/jquery.js"/>"></script>
<script src="<c:url value="resources/js/angular.min.js"/>"></script>
<link rel="shortcut icon" href="resources/images/favicon.ico"
	type="image/x-icon">
<link rel="stylesheet" href="<c:url value="resources/css/style.css"/>" type="text/css">
<link href="<c:url value="resources/css/ourStyles.css"/>"   rel="stylesheet">
<link href="<c:url value="resources/css/bootstrap.min.css"/>" rel="stylesheet">
  <link href="<c:url value="resources/css/shop-homepage.css"/>" rel="stylesheet">
    <link href="<c:url value="resources/css/planetpagestyle.css"/>" rel="stylesheet" type="text/css"  />
 <script> 
		$(function(){
		  $("#header").load("resources/template/header.html"); 
		  $("#footer").load("resources/template/footer.html"); 
		  $("#fev").load("resources/template/logof.html");
		});
	</script>
<span id="fev"></span>
</head>

<body>

	<div id="header"></div>
	<br>
	<br>
	<br>
	<!--This for the form to ask details of a star -->
	<div class="form-group">
		<form action="anasteroid" method="GET" >
			<a id="text1">Type the name of the asteroid here:</a> <input type="text"
				name="name" id="txtbx" required="required" pattern="[A-Za-z0-9]+"> <input type="submit"
				value="Search Asteroid" id="buttn">
		</form>
	</div>
	
	
	<!--Astro!  -->
	 <div>
			<img src="<c:url value="resources/images/PlanetsPage/astronaut6.png"/>" id="astroimg">
		<p id="astrotalk">Hi friends!!!...I am Astro...Come lets see the
			Asteroids!!</p>
	</div>
	
	<!-- Images -->
	<div id="mainwrapper"><!-- This #mainwrapper section contains all of our images to make them center and look proper in the browser ->
    <!-- Image Caption 1 -->
    <div id="box-1" class="box">
        <img  id="image-1" src="<c:url value="resources/images/asteroidsd/ceres.jpg"/>"/>
        <span class="caption full-caption">
        <h3>Ceres (dwarf planet)</h3>
        <p>Ceres is the largest object in the asteroid belt that lies between the orbits of Mars and Jupiter. </p>
        </span>
    </div>
 
    <!-- Image Caption 2 -->
    <div id="box-2" class="box">
        <img id="image-2" src="<c:url value="resources/images/asteroidsd/eugenia.jpg"/>"/>
        <span class="caption full-caption">
        <h3>Eugenia</h3>
        <p>45 Eugenia is a large asteroid of the asteroid belt. It is famed as one of the first asteroids to be found to have a moon orbiting it. It is also the second known triple asteroid</p>
        </span>
    </div>
 
    <!-- Image Caption 3 -->
    <div id="box-3" class="box">
        <img id="image-3" src="<c:url value="resources/images/asteroidsd/intramnia.jpg"/>"/>
        <span class="caption full-caption">
        <h3>Interamnia</h3>
        <p>Interamnia is a very large asteroid, with an estimated diameter of 350 kilometres. Its mean distance from the Sun is 3.067 (AU).</p>
        </span>
    </div>
     
    <!-- Image Caption 4 -->
    <div id="box-4" class="box">
        <img id="image-4" src="<c:url value="resources/images/asteroidsd/iris.jpg"/>"/>
        <span class="caption full-caption">
        <h3>Iris</h3>
        <p>7 Iris is a large main-belt asteroid orbiting the Sun between Mars and Jupiter. It is the fourth brightest object in the asteroid belt. It is classified as an S-type asteroid, meaning that it has a stony composition.</p>
        </span>
    </div>
     
    <!-- Image Caption 5 -->
    <div id="box-5" class="box">
        <div class="rotate"><!-- Rotating div -->
            <img id="image-5" src="<c:url value="resources/images/asteroidsd/pelles.jpg"/>"/>
            <span class="caption full-caption">
            <h3>Pallas</h3>
            <p>Pallas, minor-planet designation 2 Pallas, is the second asteroid to have been discovered (after Ceres), and it is one of the largest asteroids in the Solar System.</p>
            </span>
        </div>
    </div>
 
    <!-- Image Caption 6 -->
    <div id="box-6" class="box">
        <img id="image-6" src="<c:url value="resources/images/asteroidsd/veres.jpg"/>"/>
        <span class="caption full-caption">
        <h3>Vesta</h3>
        <p>Vesta, minor-planet designation 4 Vesta, is one of the largest objects in the asteroid belt, with a mean diameter of 525 kilometres </p>
        </span>
    </div>
 
</div> <!-- end of #mainwrapper-->
	
	
	<div id="footer"></div>
</body>
</html> 
    