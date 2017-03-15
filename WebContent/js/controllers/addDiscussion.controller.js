app.controller('addController',['$scope','addService',function($scope,addService){
	$scope.users=[];
	$scope.selection =[];
	$scope.valide = {
			Dest : true,
			Titre : true
	}
	$scope.check = {
			ids: []
	};
	
	$scope.titreConversation = "";
	
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
      $scope.creation = function() {
    	  if($scope.titreConversation == ""){
    		  $scope.valide.Titre = false;
    	  } else {
    		  $scope.valide.Titre = true;
    	  }
    	  if($scope.check.ids.length == 0) {
    		  $scope.valide.Dest = false;
    	  } else {
    		  $scope.valide.Dest = true;
    	  }
    	  if($scope.valide.Dest && $scope.valide.Titre) {
    		  addService.creationConversation($scope.titreConversation,$scope.check.ids).then(function() {
    			  
    		  });
    	  }
      }
	addService.testgetUsers().then(function(result){  // Initialisation de la liste des conversations
		$scope.users=result;
	})
}]);
