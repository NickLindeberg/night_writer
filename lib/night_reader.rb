require './lib/braille_dictionary.rb'
require 'pry'

class NightReader
  attr_accessor :print_confirm,
                :incoming_braille_text,
                :all_one_line,
                :b_to_e_dictionary,
                :braille_reader,
                :incoming_line_1,
                :incoming_line_2,
                :incoming_line_3

  def initialize
    @b_to_e_dictionary = BrailleDictionary.new.braille_keys
    @braille_reader = File.open(ARGV[0], "r")
    @incoming_braille_text = @braille_reader.read
    @braille_reader.close
    @incoming_line_1 = []
    @incoming_line_2 = []
    @incoming_line_3 = []
  end

  def print_confirm #NOT COMPLETE YET
    number_of_characters = @incoming_braille_text.length - 1 #was counting next line
    puts "Created '#{ARGV[1]}' containing #{number_of_characters} unicorns"
  end

  # def format_incoming_text(incoming_braille_text)
  #   incoming_braille_text.delete("\n")
  # end
  def split_braille(incoming_text)
    @incoming_line_1, @incoming_line_2, @incoming_line_3 =
    incoming_text.split(/\n/)
  end
  # def scan_to_array(all_one_line)
  #   all_one_line[0..39].scan(/../)
  # end
  def scan_to_array(string)
    #remember to call this method three times
    #possibly buy iterating over each incoming_line string
    string.scan(/../)
  end

  def read_incoming_braille(braille_input)
    @b_to_e_dictionary[braille_input]
  end

end

nr = NightReader.new
#nr.print_confirm
puts nr.incoming_braille_text
#nr.braille_reader.close
