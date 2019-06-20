import "bootstrap";
import "../plugins/flatpickr"

// Javascript function for exanding the menu from the button //

$(document).ready(function() {
    $(".cards_expanded").hide();
    $(".dot_container").click(function(){
      $(".cards_expanded").slideToggle("swing");
    });
});

// Javascript function for exanding the Create options from the button //

$(document).ready(function() {
    $(".cards_expanded_options").hide();
    $(".create_event_button").click(function(){
      $(".cards_expanded_options").slideToggle("swing");
    });
});

//Javascript for navBarToggle -- going from bars to cross //
$(document).ready(function() {
    $(".burger_container").click(function(){
      $(".burger_container").toggleClass('change');
    });
});

// Javascript for slider //
$('.slide').on('click', function(){
    $('#fade-in').toggleClass('show');
});

$('.spin').on('click', function(){
    $('#spin-in').toggleClass('show2');
});

$('h1.spacing').on('mouseenter', function(){
  $(this).toggleClass('spaced');
});
