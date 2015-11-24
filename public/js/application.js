
$(document).ready(function() {

	photoForm();
	addPhoto();
  

});

	var photoForm = function(){
		$("#new-photo").on("click", function(e){
		e.preventDefault();
			$('#new-photo').hide();

			var request = $.ajax({
				method: 'get',
				url: '/photos/new',
				data: 'html',
			})

			request.done(function(data){
				$('#new-photo-inner-content').append(data)
			})
	});
};

var addPhoto = function(){
	$("body").on("submit", "#new-photo-form", function(e){
		e.preventDefault();

		var data = $("#new-photo-form").serialize();
		var request = $.ajax({
			method: 'post',
			url: '/photos',
			dataType: 'html',
			data: data
		})

		request.done(function(data){
			$('#new-photo-inner-content').remove();
			$("#new-photo").show();
		})

	})
}


