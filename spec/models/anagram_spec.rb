require 'spec_helper'

describe Anagram do
  subject { Anagram.new("wordlist.txt") }
  
  describe ".initialize" do
    it "loads words from given file" do
      expect(subject.words.size).to be > 0
    end
    
    it "creates a words hash" do
      expect(subject.words_hash.size).to be > 0
    end
  end
  
  describe "#find" do
    it "returns anagrams of 'crepitus'" do
      expect(subject.find("crepitus")).to match_array(["cuprites", "pictures", "piecrust"])
    end
  end
end
