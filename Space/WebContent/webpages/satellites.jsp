<%@ taglib prefix="c" uri="http://www.springframework.org/tags" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Satellites</title>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta name="description" content="">
<meta name="author" content="">
<link rel="shortcut icon" href="resources/images/favicon.ico"
	type="image/x-icon">
<link rel="stylesheet"
	href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.0/jquery.min.js"></script>
<script
	src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>
<link rel="stylesheet" href="<c:url value="resources/css/style.css"/>" type="text/css">
<link href="<c:url value="resources/css/ourStyles.css"/>"   rel="stylesheet">
<link href="<c:url value="resources/css/bootstrap.min.css"/>" rel="stylesheet">
  <link href="<c:url value="resources/css/shop-homepage.css"/>" rel="stylesheet">
    <link href="<c:url value="resources/css/planetpagestyle.css"/>" rel="stylesheet" type="text/css"  />
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
	<br>
	<br>

	
	
	<!--Astro!  -->
	 <div>
			<img src="<c:url value="resources/images/PlanetsPage/astronaut6.png"/>" id="astroimg">
		<p id="astrotalk">Hi friends!!!...I am Astro...Come lets see the
			Satellites!!</p>
	</div> 
	
	<!-- Images -->
	<div id="mainwrapper"><!-- This #mainwrapper section contains all of our images to make them center and look proper in the browser ->
    <!-- Image Caption 1 -->
    <div id="box-1" class="box">
        <img  id="image-1" src="<c:url value="resources/images/PlanetsPage/landsat.jpg"/>"/>
        <span class="caption full-caption">
        <h3>Landsat 8</h3>
        <p>This is a collaboration between NASA and the U.S. Geological Survey, will provide moderate-resolution measurements of the Earth's terrestrial and polar regions.</p>
        </span>
    </div>
 
    <!-- Image Caption 2 -->
    <div id="box-2" class="box">
        <img id="image-2" src="<c:url value="resources/images/PlanetsPage/spacestation.jpg"/>"/>
        <span class="caption full-caption">
        <h3>Space Station</h3>
        <p>The International Space Station (ISS) is a joint project of five space agencies:NASA(United States) and the Space Agencies of Russia, Canada, Japan and Europe.</p>
        </span>
    </div>
 
    <!-- Image Caption 3 -->
    <div id="box-3" class="box">
        <img id="image-3" src="<c:url value="resources/images/PlanetsPage/terra.jpg"/>"/>
        <span class="caption full-caption">
        <h3>Terra</h3>
        <p>This is a science and observation program that will provide long-term (15-year) data sets for Earth system science in order to gain an understanding of the interactions between Earth's land, atmosphere, oceans, and biology.</p>
        </span>
    </div>
     
    <!-- Image Caption 4 -->
    <div id="box-4" class="box">
        <img id="image-4" src="<c:url value="resources/images/PlanetsPage/aqua.jpg"/>"/>
        <span class="caption full-caption">
        <h3>Aqua</h3>
        <p>AQUA (EOS-PM1) is an afternoon equator-crossing platform which includes a suite of sensors designed to study the diurnal properties of cloud and aerosol radiative fluxes, cloud formation, and precipitation </p>
        </span>
    </div>
     
    <!-- Image Caption 5 -->
    <div id="box-5" class="box">
        <div class="rotate"><!-- Rotating div -->
            <img id="image-5" src="<c:url value="resources/images/PlanetsPage/spot7.png"/>"/>
            <span class="caption full-caption">
            <h3>SPOT 7</h3>
            <p>SPOT 7 is a commercial high-resolution optical imaging Earth observation satellite system operating from space.</p>
            </span>
        </div>
    </div>
 
    <!-- Image Caption 6 -->
    <div id="box-6" class="box">
        <img id="image-6" src="<c:url value="resources/images/PlanetsPage/alos.jpg"/>"/>
        <span class="caption full-caption">
        <h3>ALOS</h3>
        <p>ALOS (Advanced Land Observing Satellite), also known as Daichi, is a Japanese (JAXA) remote sensing craft that was launched by a H-2A rocket from Tanegashima Space Center at 01:33 UT on 24 January 2006</p>
        </span>
    </div>
 <div id="box-7" class="box">
        <img id="image-7" src="<c:url value="resources/images/PlanetsPage/mangalyaan.jpg"/>"/>
        <span class="caption full-caption">
        <h3>Mangalyaan</h3>
        <p>The Mars Orbiter Mission (MOM), informally called Mangalyaan is India's first Mars orbiter.</p>
        </span>
    </div>
     <div id="box-8" class="box">
        <img id="image-6" src="<c:url value="resources/images/PlanetsPage/gsat15.jpg"/>"/>
        <span class="caption full-caption">
        <h3>GSAT15</h3>
        <p>India's GSAT15 Communications satellite, carries communication transponders in Ku-band and a GPS Aided GEO Augmented Navigation (GAGAN) payload operating in L1 and L5 bands. Weight 3164 Kg.</p>
        </span>
    </div>
    
     <div id="box-9" class="box">
        <img id="image-8" src="<c:url value="resources/images/PlanetsPage/insat.jpg"/>"/>
        <span class="caption full-caption">
        <h3>INSAT-3D</h3>
        <p>INSAT-3D is the meteorological Satellite with advanced weather monitoring payloads.</p>
        </span>
    </div>
</div> <!-- end of #mainwrapper-->

<div id="footer"></div>
</body>
</html>