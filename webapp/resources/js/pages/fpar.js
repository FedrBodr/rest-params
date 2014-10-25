var app = angular.module( 'fpropApp', ['ui.bootstrap']);

app.controller( 'MainCtrl', function( $scope ) {
	// we control our app from here
	$scope.oneAtATime = true;

	$scope.status = {
		isFirstOpen: true,
		isFirstDisabled: false
	};
});