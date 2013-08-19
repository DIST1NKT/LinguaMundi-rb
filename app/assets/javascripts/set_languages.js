$(function() {
	$("#slider").slider({
		value:0,
		min:0,
		max:400,
		step:100,
		slide: function(event, ui) {
			console.log(ui.value);
			switch(ui.value)
			{
				case 0:
					$("#skill_level").html("Beginner");
					$("#skill").val(ui.value);
					break;
				case 100:
					$("#skill_level").html("Intermediate");
					$("#skill").val(ui.value);
					break;

				case 200:
					$("#skill_level").html("Advanced (Can understand, not yet fluent)");
					$("#skill").val(ui.value);
					break;

				case 300:
					$("#skill_level").html("Fluent (can hold a steady conversation)");
					$("#skill").val(ui.value);
					break;

				case 400:
					$("#skill_level").html("Mother Tongue");
					$("#skill").val(ui.value);
					break;

			}
		}
	});
	$("#skill").val($("#slider").slider("value"));
});
