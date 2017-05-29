/**
 * Created by GIANGTRANG on 5/27/2017.
 */
$(document).ready(function(){
    $(".dropdown").hover(
        function() {
            $('.dropdown-menu', this).not('.in .dropdown-menu').stop(true,true);
            $(this).toggleClass('open');
        }
    );
});