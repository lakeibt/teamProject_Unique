!(function($) {
	//side bar - scroll menu - left
	$(window).scroll(function() {
		var position = $(document).scrollTop();
		var footer_top = $('#footer').offset().top;
		
		$('#leftbar').css('top', $(window).scrollTop());
		var leftbar_position = $('#leftbar').offset().top + $('#leftbar').outerHeight(true);
		
		if(leftbar_position > footer_top) {
			$('#leftbar').css('top', 100);
		} 
	});
	/*
	//side bar - scroll banner - right
	$(window).scroll(function() {
		var position = $(document).scrollTop();
		var footer_top = $('#footer').offset().top;
		
		$('#rightbar').css('top', $(window).scrollTop()+100);
		var rightbar_position = $('#rightbar').offset().top + $('#rightbar').outerHeight(true);
		
		if(rightbar_position > footer_top) {
			$('#rightbar').css('top', 100);
		}
	});*/
})(jQuery);

  