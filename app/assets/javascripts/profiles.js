$(document).on('ready', function(){

	$('.btn').on('click',function(event){

		var id= $(event.currentTarget).data("schedule-id");
		var barber_id= $('.js-id').data("barber-id");
	
	$.ajax({
		type: "PATCH",
		url: `/profiles/barber/${barber_id}/schedules/${id}`,
			// string interpilation use back ticks and ${} in js
		success: modification,
		error: error
	});
	
	})
})

function modification(response){
	console.log(response);
	var btn = $(`btn[data-schedule-id="${response.id}"]`)
	console.log(btn)
	$(`.btn[data-schedule-id='${response.id}']`).removeClass('active-day');
	$(`.btn[data-schedule-id='${response.id}']`).addClass('non-active-day');

}

function error(error){
	console.log(error);
	console.log("error");
}