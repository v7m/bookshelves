$(document).ready(function() {
  $("#random_button").on('click', function(e) {
 	e.preventDefault();
    	var url = document.location.pathname + '/random_book';
   	$.ajax({
       type: "GET",
       url: url,
       dataType: "json",
      
    	success: function(result) {
   			$('#random_author > h3 > i').html(result.author);
        $('#random_title > h2').html(result.title);
        $('#random_description > h4').html(result.description);
     	},
     	error: function(result) {
  			
     	},
    });	
    $(".random_book_panel").find(".well").slideDown(100);
  });
  $("#hide_random_book").click( function(e) {
 	  e.preventDefault();
    $(".random_book_panel").find(".well").slideUp(100);
  });
});

 