require './lib/braille_dictionary.rb'
require 'pry'

class NightWriter
  attr_accessor :alphabet_keys,
                :braille_dictionary,
                :line_1,
                :line_2,
                :line_3

  def initialize
    #keep instance of .new braille dictionary
    #need to initialize it so we can use its methods
    @braille_dictionary = BrailleDictionary.new.alphabet_keys
    @line_1 = []
    @line_2 = []
    @line_3 = []
  end

  def translate(message)
    

  end


  def get_array(english_key)
    #used to be called def translate_e_to_b(english_key)
    @braille_dictionary[english_key]
    #THIS OUTPUTS THE braille ARRAY FOR THAT LETTER
  end

  def shovel(letter_key)
    value_array = get_array(english_key)
    @line_1 << value_array[0]
    @line_2 << value_array[1]
    @line_3 << value_array[2]
    #MOVE THIS SOMEWHERE return format_lines
  end

  def format_lines
    line_1_string = line_1.join("")
    line_2_string = line_2.join("")
    line_3_string = line_3.join("")
    # binding.pry
    @all_lines = [line_1_string, line_2_string, line_3_string]
    @all_lines.join("\n")
  end

  def write_file

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

  #make 3 empty arrays line1 = [] line2 = [] line 3 =[]
  #let's say we have the letter "a"
  #call the "a" key on the dictionary
  #shovel index [0] for the value array of key "a" into new array line1
  #shocel index [1] for the value array of key "a" into new array line2
  #shovel index [2] for the value array of key "a" into new array line 3
  #somehow output all 3 new line arrays by sayign their name
