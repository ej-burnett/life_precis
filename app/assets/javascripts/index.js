$(document).ready(function(){
	var active_num = 0;
	$('.tab-content').hide();
	$('.tab-content:first').show();
	$('.nav li').click(function(){
		active_num = parseInt($(this).attr('id').substring(3));
		// console.log(num);
		$('.tab-content').hide();
		$('#content'+active_num).show();
	});
});
