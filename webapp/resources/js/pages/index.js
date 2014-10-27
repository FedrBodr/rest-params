/**
 * Created by fedrbodr on 23/10/14.
 */

$(function () {
	$.ajax({
		url: 'http://localhost:8080/rpar/rest/props/dummy',
		timeout: 100,
		success: function (response) {
			var propsData = response;
		},
		error: function (error) {
			// TODO add error handling
		}
	});
});

