require 'pry'

class SentimentParser

  def self.analyze(tweets)
    negative = self.negative_words
    positive = self.positive_words
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
    self.calculate_score(positive_sentiment, negative_sentiment)
  end

  def self.positive_words
    File.readlines('data/positive_words.txt').map(&:strip)
  end

  def self.negative_words
    File.readlines('data/negative_words.txt').map(&:strip)
  end

  def self.calculate_score(positive, negative)
    { positive: positive.length, negative: negative.length }
  end
end
