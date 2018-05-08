(function($) {
	$(".app_load").live('click', function() {
		var pid = $(this).attr("data-pid");
		if(!$.htian.dialog.islogin()) return ;
		$.ajax({
			url: HTIANER.root + '/?m=ajax&a=like',
				type: 'POST',
				data: {
				pid: pid
			},
			dataType: 'json',
			success: function(result){
				if(result.status == 1){
					$.htian.tip({content:result.msg, icon:'success'});
				}else if(result.status == 2){
					$.htian.tip({content:result.msg, icon:'error'});
				}else{
					$.htian.tip({content:result.msg, icon:'error'});
				}
			}
		});
		  
	});

})(jQuery);