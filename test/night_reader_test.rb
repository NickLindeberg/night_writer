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
    skip
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
    incoming_line_1 = ["11", "22", "33"]
    incoming_line_2 = ["44", "55", "66"]
    incoming_line_3 = ["77", "88", "99"]
    expected = [["11", "44", "77"], ["22", "55", "88"], ["33", "66", "99"]]
    actual = nr.zip_to_array(incoming_line_1, incoming_line_2, incoming_line_3)

    assert_equal expected, actual
  end

  def test_zipped_arrays_change_to_message_string
  nr = NightReader.new
  expected = "hey"
  actual = nr.zipped_arrays_to_english_string(
    [["0.", "00", ".."], ["0.", ".0", ".."], ["00", ".0", "00"]]
  )
  assert_equal expected, actual
  end
end
