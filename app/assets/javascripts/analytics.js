$(document).ready(function(){
	ga('create', 'UA-50962525-1', 'localhost:3000')


}); 


$("#message_button").click(function(){


	ga("send", "event", "Messages", "Sent");


});

