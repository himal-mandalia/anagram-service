require 'sinatra/base'
require 'json'
require_relative "models/anagram"

WORDS = File.readlines("wordlist.txt").map(&:chomp)

class AnagramService < Sinatra::Base
  get "/:words" do
    words = params[:words].split(/,/)
    anagrams = {}
    words.each do |word|
      anagrams[word] = ["a", "b", "c"]
    end
    
    status 200
    anagrams.to_json
  end
end
