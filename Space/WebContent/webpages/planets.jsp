<%@ taglib prefix="c" uri="http://www.springframework.org/tags" %>
<!DOCTYPE html>
<html>
<head>
<title>Planets</title>
<meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <meta name="author" content="">
    <link href="<c:url value="resources/css/planetpagestyle.css"/>" rel="stylesheet" type="text/css"  />
   <link rel="stylesheet" href="<c:url value="resources/css/Styles/style.css"/>" type="text/css">
<link rel="stylesheet"
	href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.0/jquery.min.js"></script>
<script
	src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>
 <link href="<c:url value="resources/css/bootstrap.min.css"/>" rel="stylesheet">
  <link href="<c:url value="resources/css/shop-homepage.css"/>" rel="stylesheet">
   <link href="<c:url value="resources/css/ourStyles.css"/>"  rel="stylesheet"> 
<link rel="shortcut icon" href="resources/images/favicon.ico"
	type="image/x-icon">  
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

	<div class="form-group">
	     <form action="aplanet" method="GET" >
           <a id="text1">Type the name of the planet here:</a>
           <input type="text" name="name" id="txtbx" required="required" pattern="[A-Za-z0-9]+">
           <input type="submit" value="Search Planet" id="buttn">
          </form>   
	<!--Input Planet Name and Button  --> 
     </div>
     
     
     <!--Astro Talk  -->
     <div>
			<img src="<c:url value="resources/images/PlanetsPage/astronaut6.png"/>" id="astroimg">
		<p id="astrotalk">Hi friends!!!...I am Astro...Come lets see the
			planets!!</p>
	</div> 
	
	
	<div id="mainwrapper"><!-- This #mainwrapper section contains all of our images to make them center and look proper in the browser ->
    <!-- Image Caption 1 -->
    <div id="box-1" class="box">
        <img  id="image-1" src="<c:url value="resources/images/PlanetsPage/mercury.jpg"/>"/>
        <span class="caption full-caption">
        <h3>Mercury</h3>
        <p>It is the smallest planet in the Solar System and the one closest to the Sun.</p>
        </span>
    </div>
 
    <!-- Image Caption 2 -->
    <div id="box-2" class="box">
        <img id="image-2" src="<c:url value="resources/images/PlanetsPage/venus.jpg"/>"/>
        <span class="caption full-caption">
        <h3>Venus</h3>
        <p>
It is the 2nd Planet in our solar system and has the longest rotation period. It is also called the 'evening star' or the 'morning star'..</p>
        </span>
    </div>
 
    <!-- Image Caption 3 -->
    <div id="box-3" class="box">
        <img id="image-3" src="<c:url value="resources/images/PlanetsPage/earth.jpg"/>"/>
        <span class="caption full-caption">
        <h3>Earth</h3>
        <p>It is the third planet from the Sun, the densest planet in the Solar System, the largest of the Solar System's four terrestrial planets, and the only astronomical object known 

to harbor life.</p>
        </span>
    </div>
     
    <!-- Image Caption 4 -->
    <div id="box-4" class="box">
        <img id="image-4" src="<c:url value="resources/images/PlanetsPage/mars.jpg"/>"/>
        <span class="caption full-caption">
        <h3>Mars</h3>
        <p>
Mars is smaller than Earth and Venus. It possesses an atmosphere of mostly carbon dioxide. Its surface, peppered with vast volcanoes and rift valleys. Its red colour comes from iron oxide (rust) in its soil.</p>
        </span>
    </div>
     
    <!-- Image Caption 5 -->
    <div id="box-5" class="box">
        <div class="rotate"><!-- Rotating div -->
            <img id="image-5" src="<c:url value="resources/images/PlanetsPage/jupiter.jpg"/>"/>
            <span class="caption full-caption">
            <h3>Jupiter</h3>
            <p>Jupiter at 318 Earth masses, is 2.5 times the mass of all the other planets put together. It is composed largely of hydrogen and helium. </p>
            </span>
        </div>
    </div>
 
    <!-- Image Caption 6 -->
    <div id="box-6" class="box">
        <img id="image-6" src="<c:url value="resources/images/PlanetsPage/saturn.jpg"/>"/>
        <span class="caption full-caption">
        <h3>Saturn</h3>
        <p>Saturn distinguished by its extensive ring system, has several similarities to Jupiter, such as its atmospheric composition and magnetosphere. The rings of Saturn are made up of small ice and rock particles..</p>
        </span>
    </div>
 <div id="box-7" class="box">
        <img id="image-7" src="<c:url value="resources/images/PlanetsPage/uranus.jpg"/>"/>
        <span class="caption full-caption">
        <h3>Uranus</h3>
        <p>Uranus is the seventh planet from the Sun. It has the third-largest planetary radius and fourth-largest planetary mass in the Solar System. Uranus is similar in composition to Neptune.</p>
        </span>
    </div>
     <div id="box-8" class="box">
        <img id="image-6" src="<c:url value="resources/images/PlanetsPage/neptune.jpg"/>"/>
        <span class="caption full-caption">
        <h3>Neptune</h3>
        <p>Neptune is the eighth and farthest known planet from the Sun in the Solar System. It is the fourth-largest planet by diameter and the third-largest by mass. Among the giant planets in the Solar System, Neptune is the most dense. </p>
        </span>
    </div>
    
     <div id="box-9" class="box">
        <img id="image-8" src="<c:url value="resources/images/PlanetsPage/pluto.jpg"/>"/>
        <span class="caption full-caption">
        <h3>Pluto</h3>
        <p>Pluto is a dwarf planet.It is primarily made of ice and rock.</p>
        </span>
    </div>
</div> <!-- end of #mainwrapper-->

  <div id="footer"></div>
</body>


</html>