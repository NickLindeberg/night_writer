require './lib/braille_dictionary.rb'
require 'pry'

class NightReader
  attr_accessor :print_confirm,
                :incoming_braille_text,
                :all_one_line,
                :b_to_e_dictionary,
                :braille_reader,
                :line_1,
                :line_2,
                :line_3

  def initialize
    @b_to_e_dictionary = BrailleDictionary.new.braille_keys
    @braille_reader = File.open(ARGV[0], "r")
    @incoming_braille_text = @braille_reader.read
    @braille_reader.close
    @line_1 = []
    @line_2 = []
    @line_3 = []
  end

  def print_confirm #NOT COMPLETE YET
    number_of_characters = @incoming_braille_text.length - 1 #was counting next line
    puts "Created '#{ARGV[1]}' containing #{number_of_characters} unicorns"
  end

  # def format_incoming_text(incoming_braille_text)
  #   incoming_braille_text.delete("\n")
  # end
  def split(incoming_text)
    @line_1, @line_2, @line_3 = incoming_text.split(/\n/)
  end

  # def scan_to_array(all_one_line)
  #   all_one_line[0..39].scan(/../)
  # end
  def line_to_array
  end

  def read_incoming_braille(braille_input)
    @b_to_e_dictionary[braille_input]
  end

end

nr = NightReader.new
#nr.print_confirm
puts nr.incoming_braille_text
#nr.braille_reader.close
