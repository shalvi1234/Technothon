var app = angular.module('myApp', []);
app.controller('myCtrl', function($scope, $http) {
    $http.get("u/question/all").then(function(response) {
        $scope.myData = response.data;
    });
});
