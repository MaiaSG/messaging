app.config(['$routeProvider',
	function($routeProvider) {
	$routeProvider
	.when('/connect',{
		templateUrl:  'template/connect.html',
		controller: 'connectController'
	})
	.when('/list', {
		templateUrl:  'template/listConversations.html',
		controller: 'listController'
	})
	.when('/add', {
		templateUrl:  'template/addDiscussion.html',
		controller: 'addController'
	})
	.otherwise({
		redirectTo: '/connect'
	});
}
]).run(function($location,$rootScope) {
	$rootScope.$on( "$routeChangeStart", function(event, next, current) {
		if (localStorage.getItem('login') == null) {
			// no logged user, redirect to /connect
			if ( next.templateUrl === "template/connect.html") {
			} else {
				$location.path("/connect");
			}
		}
	})
});