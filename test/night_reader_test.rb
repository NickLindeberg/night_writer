require "minitest/autorun"
require 'minitest/pride'
require 'pry'
require './lib/night_reader'

class NightReaderTest < Minitest::Test

  def test_it_exists
    nr = NightReader.new
    assert_instance_of NightReader, nr
  end

  def test_braille_corresponds_to_english_letter
    nr = NightReader.new

    assert_equal "z", nr.read_incoming_braille(["0.", ".0", "00"])
  end

  def test_it_splits_incoming_text_at_line_breaks_into_arrays
    nr = NightReader.new
    actual = nr.split_incoming_text("888888\n777777\n666666")

    assert_equal ["888888", "777777", "666666"], actual 
  end

  def test_it_splits_string_every_two_characters
    nr = NightReader.new
    actual = nr.scan_to_array("00..00..00..")
    assert_equal ["00", "..", "00", "..", "00", ".."], actual
  end

  def test_it_outputs_a_string_of_english_letters
    nr = NightReader.new
    incoming_line_1 = ["11"]
    incoming_line_2 = ["44"]
    incoming_line_3 = ["77"]
    expected = [["11", "44", "77"]]
    actual = nr.zip_to_array(incoming_line_1, incoming_line_2, incoming_line_3)

    assert_equal expected, actual

  end

end
