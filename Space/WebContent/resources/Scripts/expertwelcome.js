var app = angular.module('myApp', []);
app.controller('myCtrl', function($scope, $http) {
    $http.get("e/question/everything").then(function(response) {
        $scope.myData = response.data;
        console.log("inside get question"+myData);
    });
});

	