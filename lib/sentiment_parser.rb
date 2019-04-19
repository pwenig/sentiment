require 'dotenv/load'

class SentimentParser

  def initialize
    @client = Twitter::REST::Client.new do |config|
      config.consumer_key        = "YOUR_CONSUMER_KEY"
      config.consumer_secret     = "YOUR_CONSUMER_SECRET"
      config.access_token        = "YOUR_ACCESS_TOKEN"
      config.access_token_secret = "YOUR_ACCESS_SECRET"
    end
  end


  def self.hello_world
    'Hello World'
  end


end


# 'https://api.twitter.com/1.1/search/tweets.json?q=nasa&result_type=popular'
#
#
# @auth = { username: (ENV['CDOT_USERNAME']).to_s, password: (ENV['CDOT_PASSWORD']).to_s }
# def road_alerts
#   HTTParty.get((ENV['CDOT_ALERT_URL']).to_s, basic_auth: @auth)
# end