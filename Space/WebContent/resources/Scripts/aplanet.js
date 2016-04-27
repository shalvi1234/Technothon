show();
function show() {
	var x = location.search;
	 p = x.split("=")
	 console.log(p[1]);
   
}

var app = angular.module('myApp', ['ngSanitize']);
app.controller('myCtrl', function($scope, $http) {
   
    console.log(p[1]);
    $http.get("astro/"+p[1]).then(function(response) {
        $scope.planetData = response.data ;
        $scope.noConnection=false;
        $scope.noData=false;
        if(response.data=="connection problem")
        	$scope.noConnection=true;
        else
        	$scope.noConnection=false;
        
        var messageString=response.data.message;
        if(messageString){
        if(messageString.indexOf("Not found but don't panic")>=0||messageString.indexOf("Did you mean")>=0)
        	$scope.noData=true;
        else
        	$scope.noData=false;
        }
        else{
        	$scope.noData=false;
        }
        console.log("scope nodata"+$scope.noData);
        console.log("scope noconnection"+$scope.noConnection);
    });
});