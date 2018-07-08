
require './lib/braille_dictionary.rb'
require 'pry'

class EnglishToBraille
  attr_accessor :alphabet_keys, :braille_dictionary

  def initialize
    #keep instance of .new braille dictionary
    #need to initialize it so we can use its methods
    @braille_dictionary = BrailleDictionary.new.alphabet_keys
  end

  def translate_e_to_b(english_key)
    @braille_dictionary[english_key]

  end
end
