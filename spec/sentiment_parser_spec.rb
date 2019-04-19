require 'spec_helper'
require 'sentiment_parser'

describe SentimentParser do

  it 'returns something' do
    result = SentimentParser.hello_world
    expect(result).to eq 'Hello World'
  end


end