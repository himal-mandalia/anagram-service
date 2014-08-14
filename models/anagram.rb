class Anagram
  attr_reader :words, :words_hash
  
  def initialize(words = [])
    @words = words
    create_words_hash
  end
  
  def find(word)
    @words_hash[word.chars.sort.join] - [word]
  end
  
  private
  
  def create_words_hash
    @words_hash = Hash.new([])
    @words.each do |word|
      sorted_word = word.chars.sort.join
      @words_hash[sorted_word] += [word]
    end
  end
end
