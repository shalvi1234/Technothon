var app = angular.module('myApp', []);
app.controller('myCtrl', function($scope, $http) {
	questionId=localStorage.getItem("questionId");
	console.log("in answersofquestion")
    $http.get("u/question/getAnswer/"+questionId).then(function(response) {
    	alert($scope.hasAnswers);
        $scope.myData = response.data;
        $scope.hasAnswers=response.data.hasAnswers;
        alert($scope.hasAnswers);
    });
});
