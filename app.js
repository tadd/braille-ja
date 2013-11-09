"use strict";

var TRANSLATE_ENDPOINT = "http://braille-ja.herokuapp.com/translate"
var BRAILLE_PATTERN = /[\u2800-\u28ff]+/g

$("#translate").click(function(ev) {
    $.getJSON(TRANSLATE_ENDPOINT, {text: $("#original").val()}, function (obj) {
	var marked = obj["translated"].
	    replace(BRAILLE_PATTERN, "<span class='braille-char'>$&</span>");
	$("#translated").html(marked);
    });
});

$("#input-example").click(function(ev) {
    $("#original").val("あいうえお")
});
