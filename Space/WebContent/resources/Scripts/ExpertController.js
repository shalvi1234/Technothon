var app = angular.module('myApp', []);
app.controller('myCtrl', function($scope, $http) {
	
	console.log("in expert controller")
    $http.post("all").then(function(response) {
        $scope.myData = response.data;
    });
});



function myFunction(clickId) {
	//var val=document.getElementById("btn").value
	//alert(clickId);
	localStorage.setItem("questionId", clickId);
	var url="../u/question/getanswerpage/"+clickId;
	window.location=url;
	
}


