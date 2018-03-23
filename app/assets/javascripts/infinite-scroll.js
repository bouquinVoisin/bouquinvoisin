var ready = function() {
      var isLoading = false;
      if ($('#infinite-scrolling').size() > 0) {
        $(window).on('scroll', function() {
          var more_posts_url = $('.pagination a.next_page').attr('href');
          if (!isLoading && more_posts_url && $(window).scrollTop() > $(document).height() - $(window).height() - 60) {
            isLoading = true;
            $.getScript(more_posts_url).done(function (data,textStatus,jqxhr) {
              isLoading = false;
            }).fail(function() {
              isLoading = false;
            });
          }
        });
      }
};

/*pour lancer le js (donc le schroll) à tous les coups : au chargement de la page et si la page est en cache
$(document).ready(ready);*/
$(document).on('turbolinks:load', ready);