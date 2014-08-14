require 'spec_helper'

describe Anagram do
  subject { Anagram.new(File.readlines("wordlist.txt").map(&:chomp)) }
  
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

    it "returns anagrams of 'paste'" do
      expect(subject.find("paste")).to match_array(["pates","peats","septa","spate","tapes","tepas"])
    end
  end
end
