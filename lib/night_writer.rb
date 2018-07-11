require './lib/braille_dictionary.rb'
require 'pry'

class NightWriter
  attr_accessor :alphabet_keys,
                :braille_dictionary,
                :line_1,
                :line_2,
                :line_3,
                :writer,
                :incoming_text

  def initialize
    @braille_dictionary = BrailleDictionary.new.alphabet_keys
    @line_1 = []
    @line_2 = []
    @line_3 = []
    @reader = File.open(ARGV[0], "r")
    @writer = File.open(ARGV[1], "w")
    @incoming_text  = @reader.read
    @reader.close
  end

#this is the main translate method
#all helper methods are below in the order the main method runs them (for readability)
  def translate(message_from_txt)
    message_character_array = separate(message_from_txt.chomp)
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
    @braille_dictionary[english_key]
  end

  def shovel(value_array)
    @line_1 << value_array[0]
    @line_2 << value_array[1]
    @line_3 << value_array[2]
  end

  def format_lines
    line_1_string = @line_1.join("")
    line_2_string = @line_2.join("")
    line_3_string = @line_3.join("")
    @all_lines = [line_1_string, line_2_string, line_3_string]
      print_lines
  end

  def print_lines
    next_line = []
    second_line = []
    first_line = []
    @all_lines.map do |line|
      first_line << line[0..79]
      next_line << line[80..159]
      second_line << line[160..-1]
    end
    @all_lines = first_line
    @all_lines += next_line
    @all_lines += second_line
    @all_lines.join("\n")
  end
end

nw = NightWriter.new
nw.writer.write(nw.translate(nw.incoming_text))
nw.writer.close
