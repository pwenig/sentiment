require 'dotenv'
Dotenv.load("../.env")
require 'twitter'
require 'pry'

class SentimentParser
  #
  def initialize
    @client = Twitter::REST::Client.new do |config|
      config.consumer_key        = ENV["YOUR_CONSUMER_KEY"]
      config.consumer_secret     = ENV["YOUR_CONSUMER_SECRET"]
      config.access_token        = ENV["YOUR_ACCESS_TOKEN"]
      config.access_token_secret = ENV["YOUR_ACCESS_SECRET"]
    end
    search
  end

  def search
    @client.search("to:justinbieber marry me", result_type: "recent").take(3).each do |tweet|
      puts tweet.text
    end
  end


end

SentimentParser.new