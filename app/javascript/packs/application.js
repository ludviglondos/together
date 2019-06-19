import "bootstrap";
import "../plugins/flatpickr"

// Javascript function for exanding the menu from the button //

$(document).ready(function() {
    $(".cards_expanded").hide();
    $(".dot_container").click(function(){
      $(".cards_expanded").slideToggle("swing");
    });
});


//Javascript for navBarToggle -- going from bars to cross
$(document).ready(function() {
    $(".burger_container").click(function(){
      $(".burger_container").toggleClass('change');
    });
});
