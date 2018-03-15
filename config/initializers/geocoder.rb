# config/initializers/geocoder.rb
Geocoder.configure(

  # geocoding service (see below for supported options):
  lookup: :bing,
 :api_key =>  ENV['BING_GEOCODE_ID'],


  # IP address geocoding service (see below for supported options):
  :ip_lookup => :maxmind,



  # geocoding service request timeout, in seconds (default 3):
  :timeout => 5,

  # set default units to kilometers:
  :units => :km,


  # caching (see below for details):
  #:cache => Redis.new,
  #:cache_prefix => "..."

)