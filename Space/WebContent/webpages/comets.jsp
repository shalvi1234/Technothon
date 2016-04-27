<%@ taglib prefix="c" uri="http://www.springframework.org/tags" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Comets</title>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta name="description" content="">
<meta name="author" content="">

<link rel="stylesheet"
	href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.0/jquery.min.js"></script>
<script
	src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>
<link rel="shortcut icon" href="resources/images/favicon.ico"
	type="image/x-icon">	
	<link rel="stylesheet" href="<c:url value="resources/css/style.css"/>" type="text/css">
<link href="<c:url value="resources/css/ourStyles.css"/>"   rel="stylesheet">
<link href="<c:url value="resources/css/bootstrap.min.css"/>" rel="stylesheet">
  <link href="<c:url value="resources/css/shop-homepage.css"/>" rel="stylesheet">
    <link href="<c:url value="resources/css/planetpagestyle.css"/>" rel="stylesheet" type="text/css"  />
</head>
 <script> 
		$(function(){
		  $("#header").load("resources/template/header.html"); 
		  $("#footer").load("resources/template/footer.html"); 
		  $("#fev").load("resources/template/logof.html");
		});
	</script>
<span id="fev"></span>
<body>

	
	<div id="header"></div>
	<!--This for the form to ask details of a star -->
	<br>
	<br>
	<br>
	<div class="form-group">
		<form action="acomet" method="GET">
			<a id="text1">Type the name of the comet here:</a> <input type="text"
				name="name" id="txtbx" required="required" pattern="[A-Za-z0-9]+"> <input type="submit"
				value="Search Comet" id="buttn">
		</form>
	</div>
	
	
	<!--Astro!  -->
	 <div>
			<img src="<c:url value="resources/images/PlanetsPage/astronaut6.png"/>" id="astroimg">
		<p id="astrotalk">Hi friends!!!...I am Astro...Come lets see the
			Comets!!</p>
	</div>
	
	<!-- Images -->
	<div id="mainwrapper"><!-- This #mainwrapper section contains all of our images to make them center and look proper in the browser ->
    <!-- Image Caption 1 -->
    <div id="box-1" class="box">
        <img  id="image-1" src="<c:url value="resources/images/Cometsd/halleyscomet.jpg"/>"/>
        <span class="caption full-caption">
        <h3>Halley's Comet</h3>
        <p>The best known of all periodic comets, Halley's Comet visits the inner solar system every 75-76 years. The comet was the first to have its orbit calculated by Sir Edmond Halley.</p>
        </span>
    </div>
 
    <!-- Image Caption 2 -->
    <div id="box-2" class="box">
        <img id="image-2" src="<c:url value="resources/images/Cometsd/greatcomett.jpg"/>"/>
        <span class="caption full-caption">
        <h3>The Great Comet of 1680</h3>
        <p>Isaac Newton used the orbit of the comet as a study in the verification of Kepler's laws of motion. </p>
        </span>
    </div>
 
    <!-- Image Caption 3 -->
    <div id="box-3" class="box">
        <img id="image-3" src="<c:url value="resources/images/Cometsd/eclipse.jpg"/>"/>
        <span class="caption full-caption">
        <h3>The Eclipse Comet of 1948</h3>
        <p>A surprise greeted observers during the total solar eclipse of Nov. 1, 1948, when a bright comet was sighted next to the Sun.</p>
        </span>
    </div>
     
    <!-- Image Caption 4 -->
    <div id="box-4" class="box">
        <img id="image-4" src="<c:url value="resources/images/Cometsd/lexells.jpg"/>"/>
        <span class="caption full-caption">
        <h3>Lexell's Comet</h3>
        <p>Lexell made the closest recorded passage by a comet to our planet of all time, passing only 1.4 million miles from Earth and the comet sported a coma over four times the size of a full Moon as seen from Earth. </p>
        </span>
    </div>
     
    <!-- Image Caption 5 -->
    <div id="box-5" class="box">
        <div class="rotate"><!-- Rotating div -->
            <img id="image-5" src="<c:url value="resources/images/Cometsd/lovejoy.jpg"/>"/>
            <span class="caption full-caption">
            <h3>Comet Lovejoy</h3>
            <p>It surprised astronomers, however, when it survived its fiery plunge just 87,000 miles above the Sun's surface to become a fine morning object for Southern Hemisphere observers, </p>
            </span>
        </div>
    </div>
 
    <!-- Image Caption 6 -->
    <div id="box-6" class="box">
        <img id="image-6" src="<c:url value="resources/images/Cometsd/septcomet.jpg"/>"/>
        <span class="caption full-caption">
        <h3>The Great September Comet</h3>
        <p>The comet was also notable for producing a bright anti-tail, a sharp, spikey-looking feature that appears to be pointing sunward.</p>
        </span>
    </div>
 
</div> <!-- end of #mainwrapper-->
	
	
	
	<div id="footer"></div>
</body>
</html> 