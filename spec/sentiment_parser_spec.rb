require 'spec_helper'
require 'sentiment_parser'

describe SentimentParser do

  before do
    @results = File.read('spec/fixtures/twitter.txt')
    @analysis = {positive: 183, negative: 266}
  end

  it 'returns results' do
    expect(@results.length).to_not eq(0)
  end

  it 'returns positive words' do
    results = SentimentParser.positive_words
    expect(results.length).to_not eql 0
  end

  it 'returns negative words' do
    results = SentimentParser.negative_words
    expect(results.length).to_not eql 0
  end

  it 'analyzes' do
    analyze = SentimentParser.analyze(@results)
    expect(analyze).to eq @analysis
  end
end