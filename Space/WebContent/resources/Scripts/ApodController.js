var app = angular.module('apodApp', []);
app.controller('apodCtrl', function($scope, $http) {
	
	$http.get("apod").then(function(response){
		$scope.myData=response.data;
	    $scope.myimgUrl = response.data.url;
	    $scope.noConnection=true;
	    if(response.data=="connection problem")
        	$scope.noConnection=true;
        else
        	$scope.noConnection=false;
	});
});