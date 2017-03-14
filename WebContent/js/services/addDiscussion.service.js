app.factory('addService', [ '$q', '$http', function($q, $http) {
	var TestListe = [ {
		id: 1,
		nom: "John",
		prenom: "Snow",
		login : "jsnow"
	}, {
		id: 2,
		nom: "Eddard",
		prenom: "Stark",
		login : "estark"
	}, {
		id: 3,
		nom: "Jaime",
		prenom: "Lannister",
		login : "jlannister"
	}, {
		id: 4,
		nom: "Robb",
		prenom: "Stark",
		login : "rstark"
	}, {
		id: 5,
		nom: "Bran",
		prenom: "Stark",
		login : "bstark"
	}];
	
	return {
		getUsers : function() {
			return $http.get("http://localhost:8080/users").then(function (response) {
				return response.data;
			});
		},
		testgetUsers : function() {
			var deferred = $q.defer();
			deferred.resolve(TestListe);
			return deferred.promise;
		}
	
	}
}]);