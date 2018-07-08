require './lib/braille_dictionary.rb'
require 'pry'

class NightWriter
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

# handle = File.open(ARGV[0], "r")
# incoming_text = handle.read
# number_of_characters = incoming_text.length - 1 #was counting next line
# handle.close
#
# puts "Created '#{ARGV[1]}' containing #{number_of_characters} characters"
#
# writer = File.open(ARGV[1], "w")
#
# #writer.write(translate_e_to_b(incoming_text))
# writer.write(incoming_text)
#
# writer.close
