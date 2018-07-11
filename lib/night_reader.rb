#require './lib/braille_dictionary.rb'
require 'pry'

class NightReader
  attr_reader :print_confirm

  def initialize
    @braille_reader = File.open(ARGV[0], "r")
    @incoming_braille_text = @braille_reader.read
    @braille_reader.close
  end

  def print_confirm #NOT COMPLETE YET
    number_of_characters = @incoming_braille_text.length - 1 #was counting next line
    puts "Created '#{ARGV[1]}' containing #{number_of_characters} characters"
  end

  def translate_to_english (braille_message)
    
  end

end

nr = NightReader.new
nr.print_confirm
