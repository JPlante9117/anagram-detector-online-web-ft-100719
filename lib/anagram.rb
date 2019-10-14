class Anagram
  
  attr_accessor :word, :word_array
  
  def initialize(word)
    @word = word
  end
  
  def check_for_anagrams(word_array)
    anagrams = []
    sorted_letters = @word.split("").sort
    word_array.each do |words|
      anagrams << words if words.split("").sort == sorted_letters
    end
    return anagrams
  end
  
end