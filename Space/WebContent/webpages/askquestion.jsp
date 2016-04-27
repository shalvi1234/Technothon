<%@ taglib prefix="c" uri="http://www.springframework.org/tags" %>

<html >

<head>

    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <meta name="author" content="">

    <title>spaceXplorer</title>
<link rel="shortcut icon" href="../../resources/images/favicon.ico"
	type="image/x-icon">
    <!-- Bootstrap Core CSS -->
    <link href="../../resources/css/bootstrap.min.css" rel="stylesheet">

    <!-- Custom CSS -->
    <link href="../../resources/css/shop-homepage.css" rel="stylesheet">
	<link rel="stylesheet" href="../../resources/css/askQuestionstyles.css" type="text/css">
   
    <link href="<c:url value="../../resources/css/ourStyles.css"/>"   rel="stylesheet">
    
    <script src="../../resources/js/jquery.js"></script>

    <!-- Bootstrap Core JavaScript -->
    <script src="../../resources/js/bootstrap.min.js"></script>
        <!-- Bootstrap Core CSS -->
    <link href="../../resources/css/bootstrap.min.css" rel="stylesheet">

    <!-- Custom CSS -->
    <link href="../../resources/css/shop-homepage.css" rel="stylesheet">
<script type="text/javascript">

function manageSubmitButton(id){
	var answer=document.getElementById(id).value;
	var button=document.getElementById("submitQuery");
	if(answer.length<10){
		button.disabled=true;
	}
	else{
		
		button.disabled=false;
	}
}

function submitQuestion(event) {
	
	var question1=document.getElementById("question").value
	if(question1.length<10){
		return;	
	}
	var tag1=document.getElementById("tag").value
	
	$.post("add",
		    {
		        question: question1,
		        tag: tag1
		    },
		    function(data, status){
		        
		        
		    });
}
</script>
 <script src="//code.jquery.com/jquery-1.10.2.js"></script>
<!--  <script> 
		$(function(){
		  $("#header").load("../../resources/template/header.html"); 
		  $("#footer").load("../../resources/template/footer.html"); 
		  $("#fev").load("resources/template/logof.html");
		});
	</script> 
	<span id="fev"></span>-->
	<script>
$(document).ready(function(){
	
	function checkLogout(){
		console.log("Inside checklogout");
		$.get("getActor", function(data, status){
	        console.log("Data: " + data + "\nStatus: " + status);
	        var jdata=JSON.parse(data);
	        if(jdata.msg=="not logged in"){
	        	console.log("inside");
	        	$("#logout").css("visibility","hidden");	
	        }
	        
	        
	    });
	}
	checkLogout();
	
	$("#logout").click(checkLogout);
	

});
</script>
<fev>
<link rel="shortcut icon" href="../../resources/images/favicon.ico"
	type="image/x-icon">
</fev>
</head>

<body>

 <!--   <div id="header"></div> -->
 <!-- Navigation -->
    <nav class="navbar navbar-inverse navbar-fixed-top" role="navigation">
        <div class="container">
            <!-- Brand and toggle get grouped for better mobile display -->
            <div class="navbar-header">
                <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1">
                    <span class="sr-only">Toggle navigation</span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                </button>
                <a class="navbar-brand" href="#">
                    <img src="../../resources/images/Drawing4.jpeg" alt="" class="img-responsive">
                </a>
            </div>
  
     	  <!-- Collect the nav links, forms, and other content for toggling -->
            <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
                <ul class="nav navbar-nav">
                   <li>
                        <a href="../../login?action=page" >HOME</a>
                   </li>
                   <li>
                        <a href="../../gallery">GALLERY</a>
                   </li>
                   <li class="dropdown"><a class="dropdown-toggle"
						data-toggle="dropdown" href="#">INFORMATION <span class="caret"></span></a>
						<ul class="dropdown-menu">
							<li><a href="../../planets">PLANETS</a></li>
							<li><a href="../../stars">STARS</a></li>
							<li><a href="../../comets">COMETS</a></li>
							<li><a href="../../satellites">SATELLITES</a></li>
							<li><a href="../../meteors">METEORS</a></li>
							<li><a href="../../asteroids">ASTEROIDS</a></li>
							<!-- <li><a href="query?action=page">ISSI</a></li> -->
						</ul>
					</li>
                    <li>
                        <a href="../../u/question/add">ASK US</a>
                    </li>
                    <li>
                        <a href="../../query?action=page">CONTACT US</a>
                    </li>
                    <li>
                        <a href="../../aboutus">ABOUT US</a>
                    </li>
                    <li>
                        <a id="logout" href="../../logout">LOG OUT</a>
                    </li>
                </ul>
            </div>
            <!-- /.navbar-collapse -->
        </div>
        <!-- /.container -->
    </nav>
<div class="container">
<div class="panel panel-default">
	<div class="panel-body">
	<div class="col-md-4">
		<img src="../../resources/images/Questions.jpg" height="500px" width="300px">
	</div>
	<div class="col-md-8">
		<h2 style="color: white;">Have Questions??</h2><br> <div align="center"><h2 style="color: white;">Ask an expert</h2></div><br>
		<div align="center">
			<p >put your question here</p>
			
				<input class="form-control" onkeyup="manageSubmitButton(this.id)" required="required" type="text" required pattern=".{10,}"   id="question" name="question"/>
				<br><br>
				<p>select question tag </p><br>
				<select id="tag" name="tag" required>
				<option value="PLANET" id="tag">planets</option>
				<option value="SATELITE" id="tag">satellites</option>
				<option value="COMET" id="tag">comets</option>
				<option value="STAR" id="tag">stars</option>
				</select><br><br>
				<button class="btn btn-primary" disabled="disabled" id="submitQuery" value="submit" width="20px" height="30px" onClick="submitQuestion()" data-toggle="modal" data-target="#myModal">Submit Query</button>
			   <!-- Modal -->
			  <div class="modal fade" id="myModal" role="dialog">
			    <div class="modal-dialog">
				      <!-- Modal content-->
				      <div class="modal-content">
				        <div class="modal-header">
				          <button type="button" class="close" data-dismiss="modal">&times;</button>
				          <b><h4 class="modal-title">Hey...</h4></b>
				        </div>
				        <div class="modal-body">
				          <!-- <p>Some text in the modal.</p> -->
				         <h5> Your question has been posted!!!!<h5>
				        </div>
				        <div class="modal-footer">
				          <button type="button" class="btn btn-default" data-dismiss="modal" onclick="reload()">Close</button>
				        </div>
				      </div>
				</div>
			</div>
	</div>
</div>
         <!-- <div id="footer"></div> -->
           <footer>
            <div class="row">
                <div class="col-lg-12">
                    <p style="color: white;">Copyright &copy; SpaceXplorer 2016</p>
                </div>
            </div>
        </footer>

    </div>
    <!-- /.container -->



</body>

</html>
