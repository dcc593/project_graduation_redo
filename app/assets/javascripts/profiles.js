$(document).on('ready', function(){

	$('tue-slot').on('click',function(){
		$('tue-slot').toggle(function () {
		    $("tue-slot").addClass("non-active");
		}, function () {
		    $("#tue-slot").removeClass("non-active");
		});
	})
})