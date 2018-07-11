#require './lib/braille_dictionary.rb'
require 'pry'

class NightReader
  attr_reader :print_confirm,
              :incoming_braille_text,
              :all_one_line

  def initialize
    @b_to_e_dictionary = BrailleDictionary.new.braille_keys
    @braille_reader = File.open(ARGV[0], "r")
    @incoming_braille_text = @braille_reader.read
    @braille_reader.close
  end

  def print_confirm #NOT COMPLETE YET
    number_of_characters = @incoming_braille_text.length - 1 #was counting next line
    puts "Created '#{ARGV[1]}' containing #{number_of_characters} characters"
  end

  def format_incoming_text(incoming_braille_text)
    incoming_braille_text.delete("\n")
  end

  def scan_to_array(all_one_line)
    all_one_line.scan(/../)
  end

end

nr = NightReader.new
nr.print_confirm
