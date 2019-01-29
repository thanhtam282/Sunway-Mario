var header = {
	language_toggle: () => {
		$('header .language .wrapper .drop-down').slideUp()
		$('header .language .wrapper a').click(function () {
			$('header .language .wrapper .drop-down').slideToggle()

		})

	},

	minimize_header_scroll: () => {
		var scroll = 0
		if (window.matchMedia('(min-width: 992px)').matches === true) {

			$(window).scroll(function () {
				var compare = scroll
				scroll = $(window).scrollTop()
				if ($(window).scrollTop() + $(window).height() >= $(document).height() - 10) {
					$('header .top_nav').slideUp()
					$('main').addClass('active')
					$('header .menu-bar .logo').addClass('active')
				} else {
					if (compare < scroll) {
						$('header .top_nav').slideUp()
						$('main').addClass('active')
						$('header .menu-bar .logo').addClass('active')
					} else {
						$('header .top_nav').slideDown()
						$('main').removeClass('active')
						$('header .menu-bar .logo').removeClass('active')

					}
				}

			});
		}
	},
	toggle_menu: () => {
		$('header .toggle-menu').click( function () {
			$('header .bg-overlay').toggleClass('active')
			$('header .nav_wrapper').toggleClass('active')
			$('html').toggleClass('hide')
		})
	},
	init: function () {
		this.minimize_header_scroll();
		this.language_toggle();
		this.toggle_menu();
	}
}

$(document).ready(function () {
	header.init();

});

// $(windown).scroll(function () { 

// });
// $('header .top_nav').slideToggle()