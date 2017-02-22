$(function(){
	$('#owl-demo').owlCarousel({
		items:1,
		mouseDrag: true,
		loop: true,
		margin: 0,
		responsiveClass: true,
		dots: true,
		autoHeight: true,
		smartSpeed: 500,
		autoplay: true,
		autoplayHoverPause: true
	});


	var $tab_name=$(".tab-name li");
	$tab_name.click(function(){
		$(this).addClass("selected-yellow").siblings().removeClass("selected-yellow");
		var index=$tab_name.index(this);
			$(".lt-menu-content>section").eq(index).show().siblings().hide();


	});

	var $style_tab_name=$(".style-tab-name li");
	$style_tab_name.click(function(){
		$(this).addClass("selected-green").siblings().removeClass("selected-green");
		var index=$style_tab_name.index(this);
		$(".llb-menu section").eq(index).show().siblings().hide();


	});
});
