// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, or any plugin's
// vendor/assets/javascripts directory can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file. JavaScript code in this file should be added after the last require_* statement.
//
// Read Sprockets README (https://github.com/rails/sprockets#sprockets-directives) for details
// about supported directives.
//= require wow
//= require jquery-1.11.2.min
//= require swiper.min
//= require bootstrap.min
//= require jquery.countTo
//= require jquery.inview
//= require jquery.countdown
//= require bootstrap-select
//= require main
//= require rails-ujs
//= require turbolinks
//= require jquery.easy-autocomplete
//= require_tree .



var ready = function() { // Fonction pour englober notre code js pour le rendre compatible avec rails
   $('#filters').hide();
// FONCTION POUR SCROLLER AU SEIN DE LA PAGE
   function goToByScroll(id){ // Définition de la fonction
    $('html,body').animate({scrollTop: $("#"+id).offset().top},'slow');}

    $('#contactshow').on("click", function () { // Appel de la fonction pour mes différents boutons et liens
            
             goToByScroll('contactsection');


                                     }
                );

    $('#filtering').on("click", function () { // Appel de la fonction pour mes différents boutons et liens
            
             $('#filtering').hide();
             $('#filters').slideDown();
             
                                     }
                );

        $('#upfilters').on("click", function () { // Appel de la fonction pour mes différents boutons et liens
            
             $('#filters').slideUp();
             $('#filtering').fadeIn();
                                     }
                );



};

$(document).ready(ready);
$(document).on('turbolinks:load', ready);