$(document).ready(function(){
    $("body").on('click', ".nav_books", function(e){
    	e.preventDefault();
    	$(".nav_books").removeClass('active');
    	$(this).addClass('active');
    	// var list = $(this).attr('id');
    	// var url = document.location.pathname

    	// $.ajax({
     //   		type: "GET",
     //   		url: url,
     //   		dataType: "json",
      
    	// 	success: function(result) {
    		
     // 		},
     // 		error: function(result) {
  			// 	debugger;
     // 		},
    	// });	
    }); 
})