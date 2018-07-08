require './lib/braille_dictionary.rb'
require './lib/english_to_braille.rb'

#PUT THINGS IN HERE


#make an instance of english to braille class

handle = File.open(ARGV[0], "r")
incoming_text = handle.read
number_of_characters = incoming_text.length - 1 #was counting next line
handle.close

puts "Created '#{ARGV[1]}' containing #{number_of_characters} characters"

writer = File.open(ARGV[1], "w")

writer.write(translate_e_to_b(incoming_text))

writer.close
