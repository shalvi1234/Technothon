<%@ taglib prefix="c" uri="http://www.springframework.org/tags" %>
<!DOCTYPE html>
<html lang="en">

<head>

<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta name="description" content="">
<meta name="author" content="">
		<style>
      #map {
        width: 500px;
        height: 400px;
      }
    </style>
<title>Contact Us</title>
 <script src="<c:url value="resources/Scripts/TweetsQuestionsController.js"/>"></script> 
  <script src="//code.jquery.com/jquery-1.10.2.js"></script>
<link rel="shortcut icon" href="resources/images/favicon.ico"
	type="image/x-icon">  
<link rel="stylesheet" href="<c:url value="resources/css/style.css"/>" type="text/css">
<link href="<c:url value="resources/css/ourStyles.css"/>"   rel="stylesheet">
<link href="<c:url value="resources/css/contactUsStyle.css"/>"   rel="stylesheet">
<link href="<c:url value="resources/css/bootstrap.min.css"/>" rel="stylesheet">
  <link href="<c:url value="resources/css/shop-homepage.css"/>" rel="stylesheet">
    <link href="<c:url value="resources/css/planetpagestyle.css"/>" rel="stylesheet" type="text/css"  />
<!-- jQuery -->
	<script src="resources/js/jquery.js"></script>

	<!-- Bootstrap Core JavaScript -->
	<script src="resources/js/bootstrap.min.js"></script>
<script> 
$(function(){
  $("#header").load("<c:url value="resources/template/header.html"/>"); 
  $("#footer").load("<c:url value="resources/template/footer.html"/>"); 
  $("#fev").load("resources/template/logof.html");
});
</script>
<script type="text/javascript">
function manageSubmitButton(id){
	var answer=document.getElementById(id).value;
	var button=document.getElementById("submitbtn");
	if(answer.length<10){
		button.disabled=true;
	}
	else{
		
		button.disabled=false;
	}
}

function addquery() {
	var email1=document.getElementById("email").value;
	var query1=document.getElementById("comment").value;
	
	$.post("query/add",{
		        email: email1,
		        query: query1
		    },
		    function(data, status){
		    	alert(JSON.parse(data));
		    });
}
</script>
 <script src="//code.jquery.com/jquery-1.10.2.js"></script>
<script> 
$(function(){
  $("#header").load("resources/template/header.html"); 
  $("#footer").load("resources/template/footer.html"); 
});
</script>
<span id="fev"></span>
</head>

<body ng-app="tweetsApp">
	
	<div id="header"></div>
	<div class="container">
		<div class="panel panel-default">
			<div class="panel-body">
			<div class="row">
				<div class="col-md-5">  
                <img id="image-8" src="<c:url value="resources/images/PlanetsPage/contactus.jpg"/>"/>
               </div>
				<div class="col-md-7">
					<div align="center" >
						<h1 style="color:white;">Contact Us</h1>
					</div>
					<br>
					<div align="center">

						<form action="query/add" method="post" id="usrform">
							<div class="form-group">
								<label class="control-label col-sm-4"> <p>Enter your Email
									ID:</p></label> <input id="email" onkeyup="manageSubmitButton(this.id)" required="required" type="email" size="40px" name="email" value="example@email.com"onBlur="javascript:if(this.value==''){this.value=this.defaultValue;}" onFocus="javascript:if(this.value==this.defaultValue){this.value='';}" />
						</div> <br>
								<br>
							
							<label class="control-label col-sm-4"> <p>Enter your Comment
								here:</p></label>
							<textarea id="comment" rows="5" onkeyup="manageSubmitButton(this.id)" required="required" name="query" cols="50" name="comment" form="usrform">
							</textarea><br/> <br>
							<div class="col-sm-offset-3 col-sm-10">
							
							<input disabled="disabled" type="submit" class=" btn btn-primary" style="color: white;" id="submitbtn"value="Submit" onclick="addquery()"   /></div>
						</form>
						
					</div>
					</div>
				
					<script src='https://maps.googleapis.com/maps/api/js?v=3.exp'></script><div style='overflow:hidden;height:440px;width:700px;'><div id='gmap_canvas' style='height:440px;width:700px;'></div><div><small><a href="http://embedgooglemaps.com">									embed google maps							</a></small></div><div><small><a href="http://www.proxysitereviews.com/">proxy sites</a></small></div><style>#gmap_canvas img{max-width:none!important;background:none!important}</style></div><script type='text/javascript'>function init_map(){var myOptions = {zoom:10,center:new google.maps.LatLng(15.3686058,73.94479939999997),mapTypeId: google.maps.MapTypeId.ROADMAP};map = new google.maps.Map(document.getElementById('gmap_canvas'), myOptions);marker = new google.maps.Marker({map: map,position: new google.maps.LatLng(15.3686058,73.94479939999997)});infowindow = new google.maps.InfoWindow({content:'<strong>Persistent systems goa</strong><br>L-44, Software Technology Park, Verna Industrial Estate, Verna, Goa 403722<br>'});google.maps.event.addListener(marker, 'click', function(){infowindow.open(map,marker);});infowindow.open(map,marker);}google.maps.event.addDomListener(window, 'load', init_map);</script>
		    			<script src="https://maps.googleapis.com/maps/api/js?callback=initMap"
		     		   async defer></script>	
					</div>
				</div>
			</div>
    
    
<div id="footer"></div>
</body>

</html>
