$(document).ready(function(){
    
    	$(".shelves_panel")
    		.mouseenter(function() {
    			$( this ).css( "color", "#333333" );
    			$( this ).find( ".badge" ).css( "background-color", "#333333" );
  			})
  			.mouseleave(function() {
  				$( this ).css( "color", "#777" );
    			$( this ).find( ".badge" ).css( "background-color", "#777" );
    		})
})