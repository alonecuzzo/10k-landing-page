# main js business
jQuery ->
	currentSlide = 0
	slideDeltaY = 170
	slidesYpos0 = -600
	slidesYpos1 = slidesYpos0 - slideDeltaY
	slidesYpos2 = slidesYpos1 - slideDeltaY
	slidesYpos3 = slidesYpos2 - slideDeltaY
	slidesYpos4 = slidesYpos3 - slideDeltaY
	slideTime = 500
	fadeOutOpacity = .2
	$('.slides_container').responsiveSlides(
		before: ->
			targetY = 0
			currentSlide++
			if currentSlide == 5
				currentSlide = 0
			switch currentSlide
				when 0
					$('#slides').animate(
						marginTop: slidesYpos0
						, slideTime) 
					$('#callout0').animate(
						opacity: 1
						,slideTime)
					$('#callout1').animate(
						opacity: fadeOutOpacity
						,slideTime)
					$('#callout2').animate(
						opacity: fadeOutOpacity
						,slideTime)
					$('#callout3').animate(
						opacity: fadeOutOpacity
						,slideTime)
					$('#callout4').animate(
						opacity: fadeOutOpacity
						,slideTime)
				when 1
					$('#slides').animate(
						marginTop: slidesYpos1
						, slideTime)
					$('#callout0').animate(
						opacity: fadeOutOpacity
						,slideTime)
					$('#callout1').animate(
						opacity: 1
						,slideTime)
					$('#callout2').animate(
						opacity: fadeOutOpacity
						,slideTime)
					$('#callout3').animate(
						opacity: fadeOutOpacity
						,slideTime)
					$('#callout4').animate(
						opacity: fadeOutOpacity
						,slideTime)
				when 2 
					$('#slides').animate(
						marginTop: slidesYpos2
						, slideTime)
					$('#callout0').animate(
						opacity: fadeOutOpacity
						,slideTime)
					$('#callout1').animate(
						opacity: fadeOutOpacity
						,slideTime)
					$('#callout2').animate(
						opacity: 1
						,slideTime)
					$('#callout3').animate(
						opacity: fadeOutOpacity
						,slideTime)
					$('#callout4').animate(
						opacity: fadeOutOpacity
						,slideTime)
				when 3
					$('#slides').animate(
						marginTop: slidesYpos3
						, slideTime)
					$('#callout0').animate(
						opacity: fadeOutOpacity
						,slideTime)
					$('#callout1').animate(
						opacity: fadeOutOpacity
						,slideTime)
					$('#callout2').animate(
						opacity: fadeOutOpacity
						,slideTime)
					$('#callout3').animate(
						opacity: 1
						,slideTime)
					$('#callout4').animate(
						opacity: fadeOutOpacity
						,slideTime)
				when 4
					$('#slides').animate(
						marginTop: slidesYpos4
						, slideTime)
					$('#callout0').animate(
						opacity: fadeOutOpacity
						,slideTime)
					$('#callout1').animate(
						opacity: fadeOutOpacity
						,slideTime)
					$('#callout2').animate(
						opacity: fadeOutOpacity
						,slideTime)
					$('#callout3').animate(
						opacity: fadeOutOpacity
						,slideTime)
					$('#callout4').animate(
						opacity: 1
						,slideTime)
			return
		)
	return