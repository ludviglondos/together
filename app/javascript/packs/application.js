import "bootstrap";
import "../plugins/flatpickr"



$(document).ready(function() {
    $(".cards_expanded").hide();
    $(".dot_container").click(function(){
      $(".cards_expanded").slideToggle("slow");
    });
});
