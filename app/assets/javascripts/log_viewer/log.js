// Place all the behaviors and hooks related to the matching controller here.
// All this logic will automatically be available in application.js.
function enable_log_toggle(){
	$(".log").each(function(){
		$(this).unbind('click');
		$(this).click(function(event){
			$(this).siblings('.sub_log').toggle();
			event.preventDefault();
		});
	});
}