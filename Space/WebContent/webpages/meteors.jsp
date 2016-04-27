<%@ taglib prefix="c" uri="http://www.springframework.org/tags" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Meteors</title>
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
	
	
	
	<!--This for the form to ask details of a star -->
	<!-- <div class="form-group">
		<form action="acomet.html" method="GET" target="_blank">
			<a id="text1">Type the name of the meteor here:</a> <input type="text"
				name="name" id="txtbx"> <input type="submit"
				value="Search Meteor" id="buttn">
		</form>
	</div> -->
	
	
	<!--Astro!  -->
	 <div>
			<img src="<c:url value="resources/images/PlanetsPage/astronaut6.png"/>" id="astroimg">
		<p id="astrotalk">Hi friends!!!...I am Astro...Come lets see the
			Meteors!!</p>
	</div>
	
	<!-- Images -->
	<div id="mainwrapper"><!-- This #mainwrapper section contains all of our images to make them center and look proper in the browser ->
    <!-- Image Caption 1 -->
    <div id="box-1" class="box">
        <img  id="image-1" src="<c:url value="resources/images/meteord/allende-meteorite.jpg"/>"/>
        <span class="caption full-caption">
        <h3>Allende Meteorite</h3>
        <p> This 3-inch (8 centimeter)-wide meteorite fragment is part of the Allende meteorite, the most-studied meteorite ever. </p>
        </span>
    </div>
 
    <!-- Image Caption 2 -->
    <div id="box-2" class="box">
        <img id="image-2" src="<c:url value="resources/images/meteord/martian.jpg"/>"/>
        <span class="caption full-caption">
        <h3>Martian Meteorite</h3>
        <p>Another controversial chunk of rock, this meteorite from Mars was found in 1984 in the Allan Hills ice field in Antarctica and dubbed ALH84001.</p>
        </span>
    </div>
 
    <!-- Image Caption 3 -->
    <div id="box-3" class="box">
        <img id="image-3" src="<c:url value="resources/images/meteord/moon.jpg"/>"/>
        <span class="caption full-caption">
        <h3>Moon Meteorite</h3>
        <p>Until the 1980s, scientists believed that all meteorites came from the asteroid belt between Mars and Jupiter but this one had come from the moon.</p>
        </span>
    </div>
     
    <!-- Image Caption 4 -->
    <div id="box-4" class="box">
        <img id="image-4" src="<c:url value="resources/images/meteord/old rock.jpg"/>"/>
        <span class="caption full-caption">
        <h3>Old Rock, New Mineral</h3>
        <p>This 4.5-billion-year-old meteorite landed in northwest Africa. Inside, scientists discovered a mineral called krotite, which had never been found in nature before.</p>
        </span>
    </div>
     
    <!-- Image Caption 5 -->
    <div id="box-5" class="box">
        <div class="rotate"><!-- Rotating div -->
            <img id="image-5" src="<c:url value="resources/images/meteord/tagish.jpg"/>"/>
            <span class="caption full-caption">
            <h3>Tagish Lake</h3>
            <p>In January 2000, a meteoroid exploded over Tagish Lake in southwestern Canada, scattering the frozen lake with at least 22 pounds (10 kg) of meteorites.</p>
            </span>
        </div>
    </div>
 
    <!-- Image Caption 6 -->
    <div id="box-6" class="box">
        <img id="image-6" src="<c:url value="resources/images/meteord/will.jpg"/>"/>
        <span class="caption full-caption">
        <h3>Willamette Wonder</h3>
        <p>The Willamette meteorite is the largest ever found in North America. </p>
        </span>
    </div>
 
</div> <!-- end of #mainwrapper-->
	
<div id="footer"></div>
</body>
</html> 
    