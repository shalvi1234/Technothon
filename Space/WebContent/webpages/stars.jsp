<%@ taglib prefix="c" uri="http://www.springframework.org/tags" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Stars</title>
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
		<!--This for the form to ask details of a star -->
	<div class="form-group">
		<form action="astar" method="GET" >
			<a id="text1">Type the name of the star here:</a> <input type="text"
				name="name" id="txtbx" required="required" pattern="[A-Za-z0-9]+"> <input type="submit"
				value="Search Star" id="buttn">
		</form>
	</div>
	
	
	<!--Astro!  -->
	 <div>
			<img src="<c:url value="resources/images/PlanetsPage/astronaut6.png"/>" id="astroimg">
		<p id="astrotalk">Hi friends!!!...I am Astro...Come lets see the
			Stars!!</p>
	</div> 
	
	<!-- Images -->
	<div id="mainwrapper"><!-- This #mainwrapper section contains all of our images to make them center and look proper in the browser ->
    <!-- Image Caption 1 -->
    <div id="box-1" class="box">
        <img  id="image-1" src="<c:url value="resources/images/starsre/sun.jpg"/>"/>
        <span class="caption full-caption">
        <h3>The Sun</h3>
        <p>The Sun is the star at the centre of our solar system and is responsible for the Earth's climate and weather.</p>
        </span>
    </div>
 
    <!-- Image Caption 2 -->
    <div id="box-2" class="box">
        <img id="image-2" src="<c:url value="resources/images/starsre/canopus.jpg"/>"/>
        <span class="caption full-caption">
        <h3>Canopus</h3>
        <p>Also known as Alpha Carinae, this white giant is the brightest star in the southern constellation of Carina and the second brightest star in the nighttime sky. </p>
        </span>
    </div>
 
    <!-- Image Caption 3 -->
    <div id="box-3" class="box">
        <img id="image-3" src="<c:url value="resources/images/starsre/f.jpg"/>"/>
        <span class="caption full-caption">
        <h3>Alpha Centauri</h3>
        <p>Also known as Rigel Kent or Toliman, Alpha Centauri is the brightest star in the southern constellation of Centaurus and the third brightest star in the night sky.</p>
        </span>
    </div>
     
    <!-- Image Caption 4 -->
    <div id="box-4" class="box">
        <img id="image-4" src="<c:url value="resources/images/starsre/polaris.jpg"/>"/>
        <span class="caption full-caption">
        <h3>Polaris</h3>
        <p>Also known as the North Star,Polaris is the 45th brightest star in the night sky. It is very close to the north celestial pole, which is why it has been used as a navigational tool in the northern hemisphere for centuries. </p>
        </span>
    </div>
     
    <!-- Image Caption 5 -->
    <div id="box-5" class="box">
        <div class="rotate"><!-- Rotating div -->
            <img id="image-5" src="<c:url value="resources/images/starsre/rigela.jpg"/>"/>
            <span class="caption full-caption">
            <h3>Rigel</h3>
            <p>Also known as Beta Orionis, and located between 700 and 900 light years away, Rigel is the brightest star in the constellation Orion and the seventh brightest star in the night sky. </p>
            </span>
        </div>
    </div>
 
    <!-- Image Caption 6 -->
    <div id="box-6" class="box">
        <img id="image-6" src="<c:url value="resources/images/starsre/sirius.jpg"/>"/>
        <span class="caption full-caption">
        <h3>Sirius</h3>
        <p>Also known as the Dog Star,because it's the brightest star in Canis Major, and it is also the brightest star in the night sky.</p>
        </span>
    </div>
 
</div> <!-- end of #mainwrapper-->
	
	
	
	<div id="footer"></div>

</body>
</html>