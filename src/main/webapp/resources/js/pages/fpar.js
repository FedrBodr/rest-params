var app = angular.module( 'fpropApp', ['ui.bootstrap','uiSlider']);

app.controller( 'MainCtrl', function( $scope, $http ) {
	// we control our app from here
	var init = function () {
		// check if there is query in url
		// and fire search in case its value is not empty
		/*$scope.params = angular.fromJson('{"colorHex":"#ffb50b","colorHex2":"#ff0000","colorHex3":"#001aff",' +
			'"colorHex20":"#00ffbf","colorHex21":"#ff6a00","innerBoxesSize":1.0,"aroundBoxesSize":1.0,' +
			'"drawCountForReload":50,"renderAlgorithmType":1}');*/

        $http.get('http://localhost:8080/rpar/rest/props/dummy').
			success(function(data) {
				$scope.params = angular.fromJson(data);
				console.log("$scope.params.renderAlgorithmType = " + $scope.params.renderAlgorithmType );

			}).
			error(function(data, status, headers, config) {
				// called asynchronously if an error occurs
				// or server returns response with an error status.
				console.log(data + " " + status + " " + headers +  " " + config);

			});
		$http.get('http://localhost:8080/rpar/rest/props/alg-types').
			success(function(data) {
				$scope.algtypes = angular.fromJson(data);
				console.log("alg types " + $scope.algtypes);

			}).
			error(function(data, status, headers, config) {
				// called asynchronously if an error occurs
				// or server returns response with an error status.
				console.log(data + " " + status + " " + headers +  " " + config);
			});

        $http.get('http://localhost:8080/rpar/rest/props/logo-types').
            success(function(data) {
                $scope.logotypes = angular.fromJson(data);
                console.log("logo types " + $scope.logotypes);

            }).
            error(function(data, status, headers, config) {
                // called asynchronously if an error occurs
                // or server returns response with an error status.
                console.log(data + " " + status + " " + headers +  " " + config);
            });
	};
	// and fire it after definition
	init();

	$scope.submitForm=function(){
		/* post to server*/
		$http.put("http://localhost:8080/rpar/rest/props/update", $scope.params).success(function(data, status) {
			$scope.params = angular.fromJson(data);
		})
	}

	$scope.oneAtATime = true;

	$scope.status = {
		isFirstOpen: true,
		isFirstDisabled: false
	};
});
