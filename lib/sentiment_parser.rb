require 'pry'

class SentimentParser
  
  def self.analyze(tweets)
    sentiment = SentimentParser.new
    negative = sentiment.negative_words
    positive = sentiment.positive_words
    positive_sentiment = []
    negative_sentiment = []

    tweets.split(' ').each do |t|
      if negative.include?(t)
        negative_sentiment << t
      end
      if positive.include?(t)
        positive_sentiment << t
      end
    end
    sentiment.create_score(positive_sentiment, negative_sentiment)
  end

  def positive_words
    File.readlines('data/positive_words.txt').map(&:strip)
  end

  def negative_words
    File.readlines('data/negative_words.txt').map(&:strip)
  end

  def create_score(positive, negative)
    {positive: positive.length, negative: negative.length}
  end
end
