"use strict";

var TRANSLATE_ENDPOINT = "//braille-ja.herokuapp.com/translate"

$("#translate").click(function(ev) {
    $.getJSON(TRANSLATE_ENDPOINT, {text: $("#original").val()}, function (obj) {
	$("#translated").val(obj["translated"]);
    });
});

$("#input-example").click(function(ev) {
    $("#original").val("あいうえお")
});
