require 'dotenv'
Dotenv.load("./.env")
require 'twitter'
require 'pry'

class SentimentParser

  SEARCH_TERM = ''

  def initialize
    twitter_connect
    search
  end

  def twitter_connect
    @client = Twitter::REST::Client.new do |config|
      config.consumer_key        = ENV["YOUR_CONSUMER_KEY"]
      config.consumer_secret     = ENV["YOUR_CONSUMER_SECRET"]
      config.access_token        = ENV["YOUR_ACCESS_TOKEN"]
      config.access_token_secret = ENV["YOUR_ACCESS_SECRET"]
    end
  end

  def search
    tweets = []
    @client.search(SEARCH_TERM).take(500).each do |tweet|
      tweets << tweet.text
      puts tweet.text
    end
  end
end

SentimentParser.new