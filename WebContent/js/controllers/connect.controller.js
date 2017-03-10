app.controller('connectController',['$scope','connectService','$location',function($scope,connectService,$location){

	$scope.login = "";
	$scope.password= "";
	$scope.connectErr=true;
	$scope.connectOk=true;
	
	$scope.connect = function() {
		connectService.loginTest($scope.login, $scope.password).then(function(result){
			if(result.match(/^[a-zA-Z0-9\-_]+?\.[a-zA-Z0-9\-_]+?\.([a-zA-Z0-9\-_]+)?$/)) {
				$scope.connectOk=false;
				$scope.connectErr=true;
				localStorage.setItem('login',$scope.login)
				$location.path("/list");
			} else {
				$scope.connectErr=false;
				$scope.connectOk=true;
			}
		});
	};
}]);