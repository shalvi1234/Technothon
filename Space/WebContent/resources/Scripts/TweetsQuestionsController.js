var app = angular.module('tweetsApp', []);
app.controller('tweetsCtrl', function($scope, $http) {
	console.log("getting tweets");
    $http.get("gettweets").then(function(response) {
        $scope.tweetData = response.data;
        console.log($scope.tweetData);
        if(response.data.msg=="connection problem")
     	   $scope.msg=true;
        else
     	   $scope.msg=false;
        
    });
    
    
});

app.controller('quesCtrl', function($scope, $http) {
	console.log("hi");
    $http.get("question/get/10").then(function(response) {
        $scope.myData = response.data;
       if(response.data.msg=="connection problem")
    	   $scope.msg=true;
       else
    	   $scope.msg=false;
       
    });
});

