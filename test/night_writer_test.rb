require "minitest/autorun"
require 'minitest/pride'
require 'pry'
require './lib/night_writer.rb'

class NightWriterTest < Minitest::Test #

  def test_it_exists
    nw = NightWriter.new
    assert_instance_of NightWriter, nw
  end

  def test_it_gets_braille_array_for_single_letters
    nw = NightWriter.new
    expected_a = ["0.", "..", ".."]
    expected_z = ["0.", ".0", "00"]
    assert_equal expected_a, nw.get_array("a")
    assert_equal expected_z, nw.get_array("z")
  end

  def test_it_changes_message_to_character_array
    nw = NightWriter.new
    assert_equal ["h", "e", "l", "l", "o"], nw.separate("hello")
  end

  def test_if_lines_joined
    nw = NightWriter.new
    assert_equal ["h", "e", "l", "l", "o"], nw.separate("hello")

  end

  def test_it_translates_one_character_to_braille
    nw = NightWriter.new
    expected = "0.\n..\n..\n\n\n\n\n\n"

    assert_equal expected, nw.translate("a")
  end

  def test_it_translates_multiple_characters_to_braille
    nw = NightWriter.new
    expected = "0.0.\n..0.\n....\n\n\n\n\n\n"

    assert_equal expected, nw.translate("ab")
  end

end

  # #def test it prints one braille character on 3 lines
  # def test_braille_translation_prints_on_3_lines
  #   skip
  #   nw = NightWriter.new
  #   expected_a = "0.\n..\n.."
  #   actual = nw.translate_e_to_b("a")
  #   assert_equal expected_a, actual


  # def test_it_translates_multiple_letters
  #   etb = EnglishToBraille.new
  #   expected_a = ["0.", "..", ".."]
  #   expected_z = ["0.", ".0", "00"]
  #   binding.pry
  #   assert_equal expected_a, etb.translate_e_to_b("a")
  #   assert_equal expected_z, etb.translate_e_to_b("z")
  #end
