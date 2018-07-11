require "minitest/autorun"
require 'minitest/pride'
require 'pry'
require './lib/night_reader.rb'

class NightReaderTest < Minitest::Test

  def test_it_exists
    nr = NightReader.new
    assert_instance_of NightReader, nr
  end

  def test_it_joins_incoming_braille
    nr = NightReader.new
    assert_equal "0.....", nr.format_incoming_text("0.\n..\n..")
  end

  def test_it_creates_array_from_joined_braille_character_string
    nr = NightReader.new
    assert_equal ["0.","..", ".."], nr.scan_to_array("0.....")
  end

  def test_braille_corresponds_to_english_letter
    nr = NightReader.new
    assert_equal "z", nr.read_incoming_braille(["0.", ".0", "00"])
  end

end
