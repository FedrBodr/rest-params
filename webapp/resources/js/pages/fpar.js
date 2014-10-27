var app = angular.module( 'fpropApp', ['ui.bootstrap']);

app.controller( 'MainCtrl', function( $scope, $http ) {
	// we control our app from here
	var init = function () {
		// check if there is query in url
		// and fire search in case its value is not empty

		$http.get('http://localhost:8080/rpar/rest/props/dummy').
			success(function(data) {
				$scope.params = angular.fromJson(data);

			}).
			error(function(data, status, headers, config) {
				// called asynchronously if an error occurs
				// or server returns response with an error status.
				console.log(data + " " + status + " " + headers +  " " + config);
			});;
	};
	// and fire it after definition
	init();

	$scope.submitForm=function(){
		/* post to server*/

		$http.put("http://localhost:8080/rpar/rest/props/update", $scope.params).success(function(data, status) {
			$scope.hello = data;
		})
	}

	$scope.oneAtATime = true;

	$scope.status = {
		isFirstOpen: true,
		isFirstDisabled: false
	};
});
