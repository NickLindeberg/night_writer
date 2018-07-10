require './lib/braille_dictionary.rb'
require 'pry'

class NightWriter
  attr_accessor :alphabet_keys,
                :braille_dictionary,
                :line_1,
                :line_2,
                :line_3,
                :reader,
                :writer,
                :incoming_text

  def initialize
    #keep instance of .new braille dictionary
    #need to initialize it so we can use its methods
    @braille_dictionary = BrailleDictionary.new.alphabet_keys
    @line_1 = []
    @line_2 = []
    @line_3 = []
    @reader = File.open(ARGV[0], "r")
    @writer = File.open(ARGV[1], "w")
    @incoming_text = @reader.read
    @reader.close
  end


#this is the main method
#all helper methods are below in the order the main method runs them (for readability)
  def translate(message_from_txt) #this method needs to iterate
  message_character_array = separate(message_from_txt)
  message_character_array.map do |letter|
    one_braille_array = get_array(letter)
    #now the output is the 3-element braille array for that one letter character
    shovel(one_braille_array)
    end
    format_lines
  end

  def separate(message_string)
    message_string.chars
  end

  def get_array(english_key)
    #used to be called def translate_e_to_b(english_key)
    @braille_dictionary[english_key]
    #THIS OUTPUTS THE braille ARRAY FOR THAT LETTER
  end

  def shovel(value_array) #value_array is the braille array for one character
#can you shovel an
    @line_1 << value_array[0]
    @line_2 << value_array[1]
    @line_3 << value_array[2]
  end

  def format_lines
    line_1_string = @line_1.join("")
    line_2_string = @line_2.join("")
    line_3_string = @line_3.join("")
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

nw = NightWriter.new
@writer.write(nw.translate(@incoming_text))
@writer.close


#number_of_characters = incoming_text.length - 1 #was counting next line

#puts "Created '#{ARGV[1]}' containing #{number_of_characters} characters"
