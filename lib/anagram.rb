class Anagram
  
  attr_accessor :word
  
  def initialize(word)
    @word = word
  end
  
  def check_for_anagrams(word_array)
    matches = []
    sorted_letters = @word.split("").sort
    word_array.each do |words|
      matches << words if words.split("").sort == sorted_letters
    end
    return matches
  end
  
end