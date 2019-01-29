function bgimg() {
	$('[bg-img]').each(function () {
		var bgimg = $(this).attr('bg-img');
		$(this).css({
			"background-position": "center center",
			"background-size": "cover",
			"background-repeat": "no-repeat",
			"background-image": "url(" + bgimg + ")"
		});
	});
};
$(document).ready(function () {
	bgimg();
});
