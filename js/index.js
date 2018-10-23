$(document).ready(function () {


	// Validation of the form of adding a post

	$('#formAddPost').validate({
		rules: {
			title: {
				required: true,
				minlength: 2
			},
			author: {
				required: true,
				minlength: 2
			},
			text: {
				required: true
			}
		}, // end of rules
		messages: {
			title: {
				required: "Enter title",
				minlength: "Use at least two characters"
			},
			author: {
				required: "Enter your name",
				minlength: "Use at least two characters"
			},
			text: {
				required: "Enter text"
			}
		} // end submitHandler
	}); // end validate()

	// Validation of the form of adding a comment

	$('#formAddComment').validate({
		rules: {
			authorComment: {
				required: true,
				minlength: 2
			},
			textComment: {
				required: true
			}
		}, // end of rules
		messages: {
			authorComment: {
				required: "Enter your name",
				minlength: "Use at least two characters"
			},
			textComment: {
				required: "Enter your comment"
			}
		}
	}); // end validate()

	// Add Slider
	$('#lightSlider').lightSlider({
		item:1,
		loop:true,
	});

}); // document ready end