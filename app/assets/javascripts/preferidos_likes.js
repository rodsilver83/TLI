$(document).ready(function(){
	$(".like-btn").click(function(event){
		$(this).children(".layover").css({'opacity': '0','transition':'all 0.4s ease 0s'});
		$(this).children(".love-it").css({'width':'20px','padding':'0 5px 5px','margin-top': '0px','opacity':'1','transition':'all 0.4s ease 0s'});
		$(this).children(".love-it").html('<i class="icon-heart icon-white"></i>');
		$(this).css("cursor","default");
		
		$.post('/like',{id:$(this).attr('id')})
		
		event.preventDefault();
		return false;
	});
});