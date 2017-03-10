app.factory('connectService', [ '$q', '$http', function($q, $http) {
	var logins = [ {
		login : "estark",
		password : "got"
	}, {
		login : "jlannister",
		password : "got"
	}, {
		login : "jsnow",
		password : "got"
	} ];

	return {
		loginTest : function(ulogin, upassword) {
			var deferred = $q.defer();
			var index = -1;
			for (var i = 0; i < logins.length; i++) {
				if (logins[i].login == ulogin) {
					index = i;
					break;
				}
			}
			console.log(index);
			if (index >= 0 && logins[index].password == upassword) 
				deferred.resolve("xxxx.yyyyy.zzzzz");
			else 
				deferred.resolve("Error");
			return deferred.promise;
		},
		login : function(ulogin, upassword) { // Envoi par JWT
				return $http.post("http://localhost:8080/users/connect",{login:ulong,password:upassword}).then(function (response){
					console.log(response);
					return responde.data;
				})
		}
	}
} ]);