$(document).ready(function(){
    $('.navbar .dropdown').hover(function() {
        $(this).find('.dropdown-menu').first().stop(true, true).delay(100).slideDown();
    }, function() {
        $(this).find('.dropdown-menu').first().stop(true, true).slideUp()
    });
})