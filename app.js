"use strict";

var TRANSLATE_ENDPOINT = "http://braille-ja.herokuapp.com/translate";
var PING_ENDPOINT = "http://braille-ja.herokuapp.com/ping";
var BRAILLE_PATTERN = /[\u2800-\u28ff]+/g;

$(function () {
    $("#translate").click(function(ev) {
	$.getJSON(TRANSLATE_ENDPOINT, {text: $("#original").val()}, function (obj) {
	    var marked = obj["translated"].
		replace(BRAILLE_PATTERN, "<span class='braille-char'>$&</span>");
	    $("#translated").html(marked);
	});
    });
});

$.get(PING_ENDPOINT, null, function () {}, 'text');
