$(function() {
	$("#slider").slider({
		value:100,
		min:0,
		max:400,
		step:100,
		slide: function(event, ui) {
			$("#skill").val(ui.value);
		}
	});
	$("#skill").val($("#slider").slider("value"));
});

beginner
intermediate
advanced
fluent