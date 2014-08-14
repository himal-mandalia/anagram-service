require 'sinatra/base'
require 'json'
require_relative "models/anagram"

WORDS = File.readlines("wordlist.txt").map(&:chomp)
ANAGRAM = Anagram.new(WORDS)

class AnagramService < Sinatra::Base
  get "/:words" do
    words = params[:words].split(/,/)
    results = build_anagram_hash(words)
    status 200
    results.to_json
  end
  
  private
  
  def build_anagram_hash(words)
    hash = {}
    words.each do |word|
      hash[word] = ANAGRAM.find(word) || []
    end
    hash
  end
end
