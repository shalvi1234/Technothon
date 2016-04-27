function checkUsername(username1) {
	if(username1==""&&username1.length>3){
		
	}
	else{
		$.post("actor/checkusername",
		        {
		          username: username1
		        },
		        function(data,status){
		            console.log("username " + data + "\nStatus: " + status);
		        	if(data=="false"){
		        		document.getElementById("userdiv").innerHTML="username already exists.";
		        	}
		        	else{
		        		document.getElementById("userdiv").innerHTML="";
		        	}
		        });
	}
	
	

}