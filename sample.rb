class Sample
  require 'rubygems'
  require 'net/http'
  require 'json'
  require 'forecast_io'
  OpenSSL::SSL::VERIFY_PEER = OpenSSL::SSL::VERIFY_NONE



  ForecastIO.api_key = '7ad69e74eb23f877270fa35ddfd82dbc'
  forecast ||= ForecastIO.forecast(52.5243700, 13.4105300, params: { units: 'si', exclude: 'minutely, daily, flags, alerts' })

  #p forecast.latitude
  #p forecast.longitude
  #p forecast.timezone
  #p forecast.offset
  p forecast.currently
  #p forecast.minutely
  #p forecast.hourly
  #p forecast.daily
  #p forecast.flasg

 p forecast


end