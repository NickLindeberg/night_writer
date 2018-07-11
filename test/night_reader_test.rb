require "minitest/autorun"
require 'minitest/pride'
require 'pry'
require './lib/night_reader'

class NightReaderTest < Minitest::Test

  def test_it_exists
    nr = NightReader.new
    assert_instance_of NightReader, nr
  end

  # def test_it_joins_incoming_braille
  #   nr = NightReader.new
  #   assert_equal "0.....", nr.format_incoming_text("0.\n..\n..")
  # end

  def test_braille_corresponds_to_english_letter
    nr = NightReader.new
    assert_equal "z", nr.read_incoming_braille(["0.", ".0", "00"])
  end

  def test_it_splits_incoming_text_at_line_breaks_into_arrays
    nr = NightReader.new
    nr.split("888888\n777777\n666666")
    assert_equal "888888", nr.line_1
    assert_equal "777777", nr.line_2
    assert_equal "666666", nr.line_3
    #binding.pry
  end

end
