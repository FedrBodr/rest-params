/**
 * Created by fedrbodr on 23/10/14.
 */

var mk = new MK(); // same as new Matreshka;
$(function () {

	$.minicolors.defaults = $.extend($.minicolors.defaults, {
		letterCase: 'uppercase',
		theme: 'bootstrap'
	});

	$("#colorHex").minicolors({
		change: function(hex, opacity) {
			$(this).change();// for matreshka
			console.log(hex + ' - ' + opacity);
		}});

	$.ajax({
		url: 'http://localhost:8080/rpar/rest/props/dummy',
		timeout: 100,
		success: function (response) {
			var propsData = response;

			mk.bindElement( 'colorHex', '#colorHex', {
				on: 'change',
				getValue: function() {
					return this.value;
				},
				setValue: function( v ) {
					this.value = v;
				}
			});
		},
		error: function (error) {
			// TODO add error handling
		}
	});

});

