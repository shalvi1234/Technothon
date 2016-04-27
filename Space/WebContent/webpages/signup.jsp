<%@ taglib prefix="c" uri="http://www.springframework.org/tags"%>
<!DOCTYPE html>
<html lang="en">

<head>

<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta name="description" content="">
<meta name="author" content="">

<title>Sign Up</title>

<!-- jQuery -->
<script src="<c:url value="resources/js/jquery.js"/>"></script>


<link rel="shortcut icon" href="resources/images/favicon.ico"
	type="image/x-icon">

<link href="<c:url value="resources/css/bootstrap.min.css"/>"
	rel="stylesheet">
<link href="<c:url value="resources/css/shop-homepage.css"/>"
	rel="stylesheet">

<link href="<c:url value="resources/css/signupstyle.css"/>"
	rel="stylesheet">
<link href="<c:url value="resources/css/ourStyles.css"/>"
	rel="stylesheet">

<script>
	$(function() {
		$("#header").load("<c:url value="resources/template/header.html"/>");
		$("#footer").load("<c:url value="resources/template/footer.html"/>");
		$("#fev").load("resources/template/logof.html");
	});
</script>

<script type="text/javascript">
	function checkPassword() {
		var password = document.getElementById("password"), confirm_password = document
				.getElementById("confirm_password");

		function validatePassword() {
			if (password.value != confirm_password.value) {
				confirm_password.setCustomValidity("Passwords Don't Match");
			} else {
				confirm_password.setCustomValidity('');
			}
		}

		password.onchange = validatePassword;
		confirm_password.onkeyup = validatePassword;
	}
</script>

<script type="text/javascript">
	function checkUsername(username1) {
		if (username1 == "" && username1.length > 3) {

		} else {
			$
					.post(
							"actor/checkusername",
							{
								username : username1
							},
							function(data, status) {
								console.log("username " + data + "\nStatus: "
										+ status);
								if (data == "false") {
									document.getElementById("userdiv").innerHTML = "username already exists.";
									 document.getElementById("signup").disabled = true;
								} else {
									document.getElementById("userdiv").innerHTML = "";
									document.getElementById("signup").disabled = false;
								}
							});
		}

	}
</script>
<script type="text/javascript">
function checkdate(date)
{
var myDate = new Date(date);

var today = new Date();
{
    if (myDate>today)
    {
    alert('You cannot enter a date in the future!');
    
    return false;
    
    }
    else
    return true;
}
}
</script>

<span id="fev"></span>
</head>

<body>
	<div id="header"></div>
	<!-- Page Content -->

	<div class="container">
		<div class="panel panel-default">
			<div id="panel" class="panel-body">
				<div class="col-md-6">
					<img id="image-8"
						src="<c:url value="resources/images/signuphere.png"/>" />
				</div>
				<div class="col-md-6">
					<div align="center">
						<h1>Sign up</h1>
						<br />
						<form action="addactor" method="post">
							<div class="form-group">

								<label class="control-label col-sm-4"><p>Enter first
										name:</p></label> <input type="text" name="firstName"
									placeholder="First_Name" required pattern="[a-zA-Z0-9]+">
							</div>
							<br />
							<div class="form-group">
								<label class="control-label col-sm-4"><p>Enter last
										name:</p></label> <input type="text" name="lastName"
									placeholder="last_name" required pattern="[a-zA-Z0-9]+">
							</div>
							<br />
							<div class="form-group">
								<label class="control-label col-sm-4"><p>Enter DOB:</p></label>
								<input type="date" name="dob" placeholder="dd/mm/yyyy" required
									pattern=(0[1-9]|1[0-9]|2[0-9]|3[01])/(0[1-9]|1[012])/[0-9]{4}
									onBlur="checkdate(this.value)">
							</div>
							<br />
							<div class="form-group">
								<label class="control-label col-sm-4"><p>Enter
										emailId:</p></label> <input type="email" name="email"
									placeholder="examle@email.com" required
									pattern="[a-z0-9._%+-]+@[a-z0-9.-]+\.[a-z]{2,3}$">
							</div>

							<br />
							<div class="form-group">
								<label class="control-label col-sm-4"><p>Enter
										phoneNo:</p></label> <input type="tel" name="phoneNumber"
									placeholder="phoneNo" required pattern="[0-9]{10}">
							</div>
							<br /> <br />
							<div class="form-group">
								<label class="control-label col-sm-4"><p>Role:</p></label> <select
									name="role" width="300px">
									<option value="LEARNER">LEARNER</option>
									<option value="EXPERT">EXPERT</option>
								</select>
							</div>
							<br />

							<div class="form-group">
								<label class="control-label col-sm-4"><p>Enter
										username:</p></label> <input type="text" name="username"
									placeholder="username" onBlur="checkUsername(this.value)"
									required pattern="[_a-zA-Z0-9]+">
							</div>
							<font color="red"><p id="userdiv" class="form-group"></p></font>

							<br />
							<div class="form-group">
								<label class="control-label col-sm-4"><p>Enter
										password:</p></label> <input type="password" name="password" required
									pattern="[_a-zA-Z0-9]+">>
							</div>
							<br />
							<!-- 		<div class="form-group">
								<label class="control-label col-sm-4"><p>Confirm
										password:</p></label> <input type="password" name="confirm_password" required>
							</div> -->
							<br />

							<div class="form-group">
								<div class="col-sm-offset-2 col-sm-10">
									<label class="control-label col-sm-4"> <input
										type="submit" id="signup" value="submit" />
									</label>
								</div>
							</div>
						</form>
					</div>
				</div>
			</div>
		</div>
	</div>
	<!-- Footer -->
	<div id="footer"></div>
	<!-- /.container -->
</body>
</html>
