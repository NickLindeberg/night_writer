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
                :incoming_line_3,
                :english_writer

  def initialize
    @b_to_e_dictionary = BrailleDictionary.new.braille_keys
    @braille_reader = File.open(ARGV[0], "r")
    @english_writer = File.open(ARGV[1], "w")
    @incoming_braille_text = @braille_reader.read
    @braille_reader.close
    @incoming_line_1 = []
    @incoming_line_2 = []
    @incoming_line_3 = []
  end

  def braille_translate(incoming_braille_text)
    @incoming_braille_text = incoming_braille_text
    split_incoming_text(incoming_braille_text)
    scanned_braille_array = scan_to_array(message_braille_array)
    scanned_braille_array.map do |letter|
      zipped array = a.zip_to_array
    end
    zipped_arrays_to_english_string
  end

  def print_confirm
    number_of_characters = @incoming_braille_text.length - 1 #was counting next line
    puts "Created '#{ARGV[1]}' containing #{number_of_characters} unicorns"
  end

  def split_incoming_text(incoming_text)
    @incoming_line_1, @incoming_line_2, @incoming_line_3 =
    incoming_text.split(/\n/)
  end

  def zip_to_array(incoming_line_1, incoming_line_2, incoming_line_3)
    incoming_line_1.zip(incoming_line_2, incoming_line_3)
  end

  def scan_to_array(all_one_line)
    all_one_line.scan(/../)
  end

  def read_incoming_braille(braille_input)
    @b_to_e_dictionary[braille_input]
  end

  def zipped_arrays_to_english_string(array_of_arrays)
    #the above array_of_arrays argument will come from...
    #the zip_to_array method
  	array_of_strings = []
  	array_of_arrays.map do |array|
  	array_of_strings << read_incoming_braille(array)
    #binding.pry
  	end
  	final_english_message = array_of_strings.join
  end
end

nr = NightReader.new
#nr.print_confirm
nr.english_writer.write(nr.zipped_arrays_to_english_string(nr.incoming_braille_text))
# puts nr.incoming_braille_text
nr.writer.close

puts nr.incoming_braille_text

