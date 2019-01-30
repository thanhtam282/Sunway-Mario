// viết script, gọi function ở đây



var slider = {
	home_slider_1: () => {
		let home_slider_1 = new Swiper('.sunway-home-4 .swiper-container', {
			slidesPerView: 3,
			spaceBetween: 14,
			// autoplay: {
			// 	delay: 5000,
			// 	disableOnInteraction: false,
			// },
			loop: true,
			// autoHeight: false,
			navigation: {
				nextEl: '.sunway-home-4 .swiper-button-next',
				prevEl: '.sunway-home-4 .swiper-button-prev',
			},
			breakpoints: {
				// when window width is <= 320px
				400: {
					slidesPerView: 1,
				},
				// when window width is <= 640px
				600: {
					slidesPerView: 2,
				},
				768: {
					slidesPerView: 3,
				},
				992: {
					slidesPerView: 3,
				}
			}
		})
	},
	home_slider_2: () => {
		let home_slider_2 = new Swiper('.sunway-home-6 .swiper-container', {
			slidesPerView: 6,
			// spaceBetween: 14,
			autoplay: {
				delay: 5000,
				disableOnInteraction: false,
			},
			loop: true,
			// autoHeight: false,
			navigation: {
				nextEl: '.sunway-home-6 .swiper-button-next',
				prevEl: '.sunway-home-6 .swiper-button-prev',
			},
			breakpoints: {
				// when window width is <= 320px
				450: {
					slidesPerView: 2,
				},
				// when window width is <= 640px
				768: {
					slidesPerView: 3,
				},
				992: {
					slidesPerView: 4,
				},
				1200: {
					slidesPerView: 5,
				}
			}
		})
	},
	about_slider_1: () => {
		let about_slider_1 = new Swiper('.sunway-about-us-4 .swiper-container', {
			slidesPerView: 1,
			spaceBetween: 30,
			// autoplay: {
			// 	delay: 5000,
			// 	disableOnInteraction: false,
			// },
			loop: true,
			// autoHeight: false,
			navigation: {
				nextEl: '.sunway-about-us-4 .swiper-button-next',
				prevEl: '.sunway-about-us-4 .swiper-button-prev',
			},
			breakpoints: {
				450: {
					spaceBetween: 10
				},
			}
		})
	},
	about_slider_1_sub: () => {
		var slide_active = $(' .sunway-about-us-4 .swiper-slide-active').height()
		$(' .sunway-about-us-4 .swiper-slide-active').siblings().css('max-height', slide_active * .8)
		$(' .sunway-about-us-4 .swiper-slide-active').siblings().find('img').css('max-height', slide_active * .8)
		$('.sunway-about-us-4 .swiper-button-prev').click(function () {
			$(' .sunway-about-us-4 .swiper-slide-active').siblings().css('max-height', slide_active * .8)
			$(' .sunway-about-us-4 .swiper-slide-active').siblings().find('img').css('max-height', slide_active * .8)
		})
		$('.sunway-about-us-4 .swiper-button-next').click(function () {
			$(' .sunway-about-us-4 .swiper-slide-active').siblings().css('max-height', slide_active * .8)
			$(' .sunway-about-us-4 .swiper-slide-active').siblings().find('img').css('max-height', slide_active * .8)
		})
	},
	about_slider_2: () => {
		let about_slider_2 = new Swiper('.sunway-about-us-5 .swiper-container', {
			slidesPerView: 4,
			spaceBetween: 18,
			// autoplay: {
			// 	delay: 5000,
			// 	disableOnInteraction: false,
			// },
			loop: true,
			// autoHeight: false,
			pagination: {
				el: '.swiper-pagination',
				clickable: true,
			},
			breakpoints: {
				// when window width is <= 320px
				450: {
					slidesPerView: 2,
				},
				// when window width is <= 640px
				768: {
					slidesPerView: 2,
				},
				992: {
					slidesPerView: 3,
				},
				1200: {
					slidesPerView: 4,
				}
			}
		})
	},


	init: () => {
		slider.home_slider_1();
		slider.home_slider_2();
		slider.about_slider_1();
		slider.about_slider_1_sub();
		slider.about_slider_2();
	}
}

var set_height = {
	setHeightImgAboutUs: () => {
		if ($(window).width() > 992) {
			var maxHeight = 0;
			$('.sunway-about-us-2 .wrapper .boxzoom').each(function () {
				var thisH = $(this).height();
				if (thisH > maxHeight) {
					maxHeight = thisH;
				}
			});
			$('.sunway-about-us-2 .wrapper .boxzoom').height(maxHeight)

		}
	},
	init: () => {
		set_height.setHeightImgAboutUs()
	}

}



$(document).ready(() => {
	header.init();
	slider.init();
	set_height.init()
	$("#revSlider1").revolution({
		sliderType: "standard",
		sliderLayout: "auto",
		delay: 3000,
		gridHeight: "auto"
	});

});

$(window).resize(function () {
	set_height.init()

});