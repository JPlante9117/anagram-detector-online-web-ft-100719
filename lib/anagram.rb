class Anagram
  
  attr_accessor :word
  
  def initialize(word)
    @word = word
  end
  
  def match(word_array)
    anagrams = []
    sorted_letters = @word.split("").sort
    word_array.each do |words|
      anagrams << words if words.split("").sort == sorted_letters
    end
    return anagrams
  end
  
end