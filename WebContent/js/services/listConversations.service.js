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
		InitListe : function(id){
			return $http.get("http://localhost:8080/conv").then(function (response) {
				return response.data;
			});
		},
		getUser : function() {
			return $http.get("http://localhost:8080/users/me").then(function (response) {
				return response.data;
			});
		},
		getUsers : function() {
			return $http.get("http://localhost:8080/users").then(function (response) {
				return response.data;
			});
		}
	};

} ]);