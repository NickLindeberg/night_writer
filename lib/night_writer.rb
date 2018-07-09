require './lib/braille_dictionary.rb'
require 'pry'

class NightWriter
  attr_accessor :alphabet_keys, :braille_dictionary

  def initialize
    #keep instance of .new braille dictionary
    #need to initialize it so we can use its methods
    @braille_dictionary = BrailleDictionary.new.alphabet_keys
    @line_1 = []
    @line_2 = []
    @line_3 = []
  end

  def translate_e_to_b(english_key)
    @braille_dictionary[english_key]

  end

  def shovel_1(letter_key)
    value_array = @braille_dictionary[letter_key]
    value_array.map do |two_character|
      @line_1 << two_character[0]
    end
  end
  #
  # def shovel_2(letter_key)
  #   value_array = @braille_dictionary[letter_key]
  #   value_array.each do |two_character|
  #     @line_2 << two_character[1]
  #   end
  # end
  #
  # def shovel_3(letter_key)
  #   value_array = @braille_dictionary[letter_key]
  #   value_array.each do |two_character|
  #     @line_3 << two_character[2]
  #   end
  # end

  # def shovel_1(letter_key)
  #   letter_key do |two|
  #     two_character


  # def translate_e_to_b(english_key)
  #   letter_array = @braille_dictionary[english_key]
  #     three_line_string = letter_array.map do |two_things|
  #       two_things.to_s
  #   end
  #   return three_line_string
  # end

end
  #make 3 empty arrays line1 = [] line2 = [] line 3 =[]
  #let's say we have the letter "a"
  #call the "a" key on the dictionary
  #shovel index [0] for the value array of key "a" into new array line1
  #shocel index [1] for the value array of key "a" into new array line2
  #shovel index [2] for the value array of key "a" into new array line 3
  #somehow output all 3 new line arrays by sayign their name







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
