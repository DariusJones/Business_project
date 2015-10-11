$(document).ready(function(){

	$(".next-arrow").click(function(){
		var currentSlide = $(".active-slide");
		var nextSlide = $(".active-slide").next();

		var currentDot = $(".active-dot");
		var nextDot = $(".active-dot").next();
		
		if(nextSlide.length === 0) {
     	 nextSlide = $('.slide').first();
      	nextDot = $('.dot').first();
    	}

		currentSlide.fadeOut(0).removeClass("active-slide")
		nextSlide.fadeIn(600).addClass("active-slide")

		currentDot.removeClass("active-dot")
		nextDot.addClass("active-dot")

	}) 

	$(".prev-arrow").click(function(){
		var currentSlide = $(".active-slide");
		var prevSlide = $(".active-slide").prev();

		var currentDot = $(".active-dot");
		var prevDot = $(".active-dot").prev();
		
		if(prevSlide.length === 0) {
     	 	prevSlide = $('.slide').last();
      		prevDot = $('.dot').last();
    	}

		currentSlide.fadeOut(0).removeClass("active-slide")
		prevSlide.fadeIn(600).addClass("active-slide")

		currentDot.removeClass("active-dot")
		prevDot.addClass("active-dot")

	}) 

























});