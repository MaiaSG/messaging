app.factory('listService', [ '$q', '$http', function($q, $http) {
	var listTest = [ {
		idConv : 45,
		titre : "Projet 51"
	}, {
		idConv : 12,
		titre : "Sports et Loisirs"
	}, {
		idConv : 32,
		titre : "Sortie cinema"
	}, {
		idCOnv : 5,
		titre : "Sortie Piscine"
	} ];

	return {
		TestInitListe : function(id) {
			var deferred = $q.defer();
			deferred.resolve(listTest);
			return deferred.promise;
		},
		InitLIste : function(id){
			
		}
	};

} ]);