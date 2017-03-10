app.controller('listController',['$scope','listService','$rootScope',function($scope,listService,$rootScope){
	$scope.user={};
	$scope.listeConversation=[];
	$scope.open = function(idConv){ // Ouverture d'une conversation
		
	}
	
	listService.TestInitListe("8").then(function(result){  //Initialisation de la liste des conversations
		$scope.listConversation=result;
	})
	$scope.user.login=$rootScope.login;
	console.log(localStorage.getItem('login'));
}]);