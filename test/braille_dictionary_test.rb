require "minitest/autorun"
require 'minitest/pride'
require 'pry'
require './lib/braille_dictionary.rb'

class BrailleDictionaryTest < Minitest::Test

  def test_it_exists
    bd = BrailleDictionary.new
    assert_instance_of BrailleDictionary, bd
  end

  def test_letter_corresponds_to_braille_array
    bd = BrailleDictionary.new
    assert_equal ["0.", ".0", "00"],bd.alphabet_keys["z"]
  end

  def test_braille_corresponds_to_english_letter
    bd = BrailleDictionary.new
    assert_equal "z", bd.read_incoming_braille(["0.", ".0", "00"])
  end

end
