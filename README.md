# README

http://bouquinvoisin.herokuapp.com/


## Liens utiles
- pour faire marcher les fonts spéciales (type icones), ligne à rajouter dans config/application.rb :
config.assets.paths << Rails.root.join('app', 'assets', 'fonts')
source : https://stackoverflow.com/questions/27147844/rails-4-1-actioncontrollerroutingerror-no-route-matches-get-fonts-t
- Search and autocomplete http://easyautocomplete.com/download / 
https://www.youtube.com/watch?v=ibxlNN73UTY

- Intégrer email dans rails : 
https://www.youtube.com/watch?v=9eFXEzOPRNs

- Collaborating on heroku 
https://devcenter.heroku.com/articles/collab


- Using Geocoder
https://github.com/alexreisner/geocoder
https://gorails.com/episodes/geolocation-and-search-with-geocoder
 Les méthodes utiles de Geocoder : User.first.nearbys
 User.near("75002, France")
Help with config : http://hankstoever.com/posts/11-Pro-Tips-for-Using-Geocoder-with-Rails

- Google image: 
http://geoffrey-hug.logdown.com/posts/692831-how-to-use-google-to-search-images-in-your-rails-app

-CarrierWave (upload images): 
https://www.youtube.com/watch?v=Q8wF9RrJhrY