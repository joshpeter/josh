


$( document ).ready(function() {
	$('#believer_status').change(function(){
		var val = $(this).val();
		if (val == "married"){
			$('.anniversary_div').show();
			$('.spouse_div').show();
		}
		else{
			$('.anniversary_div').hide();	
			$('.spouse_div').hide();
		}
	});
});