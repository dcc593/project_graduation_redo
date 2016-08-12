$(document).on('ready', function(){

	$('btn').on('click',function(event){

		var id= $(event.currentTarget.data("data-schedule-id"));
		var barber_id= $('.js-id').data("data-barber-id");
	
	$.ajax({
		type: "PATCH",
		url: '/profiles/barber/:barber_id/schedules/:id',
		success: modification,
		error: error
	});
	
	})
})

function modification(response){
	$('btn[data-schedule-id="response.id"]').removeClass('active-day');
	$('btn[data-schedule-id="response.id"]').addClass('non-active-day');

}

function error(response){
	console.log(response);
	console.log("error");
}