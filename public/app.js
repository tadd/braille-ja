"use strict";

$("#translate").click(function(ev) {
    $.getJSON("/translate", {text: $("#original").val()}, function (obj) {
	$("#translated").val(obj["translated"]);
    });
});

$("#input-example").click(function(ev) {
    $("#original").val("あいうえお")
});
