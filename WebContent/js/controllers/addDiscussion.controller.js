app.controller('addController',['$scope','addService',function($scope,addService){
	$scope.users=[];
	$scope.selection =[];
	
	$scope.check = {
			ids: []
	};
	$scope.checkAll = function() {
	  $scope.check.ids = $scope.users.map(function(item) { return item.id; });
	};
	$scope.uncheckAll = function() {
	  $scope.check.ids = [];
	};
	
	 $scope.toggle = function (item, list) {
	        var idx = list.indexOf(item);
	        if (idx > -1) {
	          list.splice(idx, 1);
	        }
	        else {
	          list.push(item);
	        }
	      };

	      $scope.exists = function (item, list) {
	        return list.indexOf(item) > -1;
	      };
	  
	addService.testgetUsers().then(function(result){  // Initialisation de la liste des conversations
		$scope.users=result;
	})
}]);
