<!DOCTYPE html>
<html lang="en">

<head>

    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <meta name="author" content="">
    
    <title>Space Xplorer</title>
   
    <link href="resources/css/bootstrap.min.css" rel="stylesheet">
    <link href="resources/css/small-business.css" rel="stylesheet">
    
     <script src="resources/js/angular.min.js"></script>
     <script src="resources/js/crawler.js"></script>
    <script src="resources/js/jquery.js"></script>
    <script src="resources/js/bootstrap.min.js"></script>
    <script src="resources/Scripts/TweetsQuestionsController.js"></script> 
<link rel="stylesheet" href="http://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.4.0/css/font-awesome.min.css">
    <link href="resources/css/ourStyles.css"  rel="stylesheet">
 <link rel="shortcut icon" href="resources/images/favicon.ico"
	type="image/x-icon">   
    <script> 
		$(function(){
		  $("#header").load("resources/template/header.html"); 
		  $("#footer").load("resources/template/footer.html"); 
		  $("#fev").load("resources/template/logof.html");
		});
		
		
		$(document).ready(function(){
			function checkLogout(){
				console.log("Inside checklogout");
				$.get("getActor", function(data, status){
			        console.log("Data: " + data + "\nStatus: " + status);
			        var jdata=JSON.parse(data);
			        if(jdata.msg=="not logged in"){
			        	console.log("inside");
			        	$("#logout").css("visibility","hidden");	
			        	return false;
			        }
			        console.log("actor logged in");
			        
			        $("#message").html("Welcome "+jdata.firstName);
			        $("#usernameDivision").addClass("input-group col-md-9 col-md-offset-1");
			        $("#usernameDivision").html("You can start xploring!");
			        $("#usernameDivision").css("color","white");
			        if(jdata.role=="EXPERT"){
			        	 $("#passwordDivision").html("<a href=\"expertwelcome\">click here to view your questions</a>");
			        	/*  $("#passwordDivision").addClass("input-group col-md-9 col-md-offset-1"); */
			        }
			        else{
			        	 $("#passwordDivision").html("<a href=\"userwelcome\">click here to view your questions</a>");
			        	/*  $("#passwordDivision").addClass("input-group col-md-9 col-md-offset-1"); */
			        }
			        $("#loginsignupdivison").html("<br><br><br>");
			        return true;
			    });
				
				
			}
			checkLogout();
		
		});
	</script>
<span id="fev"></span>
</head>

<body ng-app="tweetsApp">
  <span id="header"></span>
    <!-- Page Content -->
    <div class="container">

        <!-- Heading Row -->
        <div class="row">
            <div class="col-md-8">
                 <div id="carousel-example-generic" class="carousel slide" data-ride="carousel">
                            <ol class="carousel-indicators">
                                <li data-target="#carousel-example-generic" data-slide-to="0" class="active"></li>
                                <li data-target="#carousel-example-generic" data-slide-to="1"></li>
                                <li data-target="#carousel-example-generic" data-slide-to="2"></li>
                                <li data-target="#carousel-example-generic" data-slide-to="3"></li>
                                <li data-target="#carousel-example-generic" data-slide-to="4"></li>
                                <li data-target="#carousel-example-generic" data-slide-to="5"></li>
                            </ol>
                            <div class="carousel-inner">
                                <div class="item active">
                                    <img class="slide-image" src="resources/images/c1.jpg" alt="">
                                </div>
                                <div class="item">
                                    <img class="slide-image" src="resources/images/c2.jpg" alt="">
                                </div>
                                <div class="item">
                                    <img class="slide-image" src="resources/images/c3.jpg" alt="">
                                </div>
                                <div class="item">
                                    <img class="slide-image" src="resources/images/c4.jpg" alt="">
                                </div>
                                <div class="item">
                                    <img class="slide-image" src="resources/images/c5.jpg" alt="">
                                </div>
                                <div class="item">
                                    <img class="slide-image" src="resources/images/c6.jpg" alt="">
                                </div>
                            </div>
                            <a class="left carousel-control" href="#carousel-example-generic" data-slide="prev">
                                <span class="glyphicon glyphicon-chevron-left"></span>
                            </a>
                            <a class="right carousel-control" href="#carousel-example-generic" data-slide="next">
                                <span class="glyphicon glyphicon-chevron-right"></span>
                            </a>
                 </div>
            </div>
            <!-- /.col-md-8 -->
            <div class="col-md-4">
                <div class="loginBox" id="loginBox">
					<div id="loginMessage">
						<form action="login" method="post">
						<br>
							<h3 id="message" align="center" >Login To Xplore</h3>
							<div id="usernameParent"align="center">
								<br>
								<div id="usernameDivision" class="input-group col-md-9 col-md-offset-1">
								  <span class="input-group-addon" id="basic-addon1"><i class="glyphicon glyphicon-user"></i></span>
								  <input type="text" required="required" id="username" name="username" class="form-control input-group" placeholder="Username" aria-describedby="basic-addon1">
								</div>
							</div>
							<br>
							<div id="passwordParent"align="center">
								<br>
								<div id="passwordDivision" class="input-group col-md-9 col-md-offset-1">
								  <span class="input-group-addon" id="basic-addon1"><i class="glyphicon glyphicon-lock"></i></span>
								  <input type="password" required="required" id="password" name="password" class="form-control input-group" placeholder="Password" aria-describedby="basic-addon1">
								</div>							
							</div>
							<br>
							<div id="loginsignupdivison"align="center">
								<br>
								<h6> ${message} </h6>
								<input type="submit" class=" btn btn-primary" value="Log in" style="color:white;" /> <a href="signup">Sign Up</a>
							</div>
						</form>
						<!-- form -->
					</div>
					<br>
					<br>
				</div>
            </div>
            <!-- /.col-md-4 -->
        </div>
        <!-- /.row -->

        <hr>

        <!-- Call to Action Well -->
        <div class="row">
            <div class="col-lg-12">
                <div id="quote" class="well text-center" style="border-color: black;">
                
                <div class="panel panel-primary">
						<div class="panel-heading"> 
						 	<h4><strong><a href="solarsystem">View our Solar System</a><br> </strong><h4>I have loved the stars too fondly to be fearful of the night - Galileo</h4></h4> 
						 </div>
						
					
						
				 </div>
                
                 
                 
                </div>
                <br>
            </div>
            <!-- /.col-lg-12 -->
        </div>
        <!-- /.row -->

        <!-- Content Row -->
        <div class="row">
            <div class="col-md-4">
                <div  id="tweetsBox" align="center">
             		<h4><strong><center>NASA TWEETS</center></strong></h4>
					<marquee onmouseover='this.stop();' onmouseout='this.start();'
					direction="up" height="400" scrollamount="3">
				
					 <div  ng-controller="tweetsCtrl">
						<div ng-show="msg" style="color: white;">Connection refused, please check your proxy settings!</div>
								<li ng-hide="msg" ng-repeat="(key,value) in tweetData" >
									
									<div class="panel panel-primary"  style=" margin-left: 10px; margin-right: 10px">
									      <div class="panel-heading">Nasa tweets</div>
									      <div class="panel-body"> <span style="color: rgb(51,122,183);" ng-bind="value.tweet"></span></div>
									 </div>
								</li>
							</div>
					</marquee>
				</div>  	
            </div>
            <!-- /.col-md-4 -->
            <div class="col-md-4">
                 <div id="apodCall">
	                    <div class="thumbnail">
	                    <a href="apod?action=page">
	                        <img alt="IMAGE" src="resources/images/1.jpg" ></a>
	                        <div class="caption">
	                            <h4><strong><a href="apod?action=page">NASA PICTURE OF THE DAY</a></strong>
                                </h4>
                                <a href="apod?action=page">Click to know more!</a>
                            </div>
                        </div>
                    </div>
            </div>
            <!-- /.col-md-4 -->
            <div class="col-md-4">
                <div  id="questionBox">
	                <br/>
	         		<h4><strong><center>RECENT QUESTIONS</center></strong></h4>
					<marquee onmouseover='this.stop();' onmouseout='this.start();' direction="up" height="400" scrollamount="4" >
						<center style="color: white;">Click here to view all questions!</center>
						<a href="question/all">
							<div  ng-controller="quesCtrl">
								<li ng-repeat="(key,value) in myData">
									<div class="panel panel-info" style=" margin-left: 10px; margin-right: 10px">
							     	<div class="panel-heading"><strong style="color: rgb(51,122,183);">Q:</strong> <span style="color: rgb(51,122,183);" ng-bind="value.question"></span></div>
							    	</div>
								</li>
							</div>		
						</a><br />
					</marquee>
				</div>
            </div>
            <!-- /.col-md-4 -->
        </div>
        <!-- /.row -->

        <!-- Footer -->
        <div id="footer"></div>
    </div>
    <!-- /.container -->
	
</body>

</html>
