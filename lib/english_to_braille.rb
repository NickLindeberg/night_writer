
require './lib/braille_dictionary.rb'

class EnglishToBraille
  include BrailleDictionary
  attr_accessor :braille_dictionary, :alphabet_keys

  def initialize
    @braille_dictionary = BrailleDictionary.new
  end

  def translate_e_to_b(english_key)
    @alphabet_keys[english_key]


  end

end
