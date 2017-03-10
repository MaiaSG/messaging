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
					if(response.token){
					console.log(response);
					localStorage.currentUser={ username: ulogin,token: response.token };
					localstorage.setItem('login',ulogin);
                    $http.defaults.headers.common.Authorization = 'Bearer ' + response.token;
					}
					return responde.data;
				})
		},
		logout : function() {
            delete $localStorage.currentUser;
            $http.defaults.headers.common.Authorization = '';
        }
	}
} ]);