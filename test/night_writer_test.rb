require "minitest/autorun"
require 'minitest/pride'
require 'pry'
require './lib/night_writer.rb'

class NightWriterTest < Minitest::Test #

  def test_it_exists
    nw = NightWriter.new
    assert_instance_of NightWriter, nw
  end
#below is broken now due to the method "translate" changing
#the test has not changed
  def test_it_gets_braille_array_for_single_letters
    nw = NightWriter.new
    expected_a = ["0.", "..", ".."]
    expected_z = ["0.", ".0", "00"]
    assert_equal expected_a, nw.get_array("a")
    assert_equal expected_z, nw.get_array("z")
  end

  def test_it_translates_to_braille
    skip
    nw = NightWriter.new
    expected = "0.\n..\n.."
    assert_equal expected, nw.shovel("a")
    # assert_equal expected_top, nw.shovel_1("a")
    # assert_equal expected_top, nw.shovel_1("a")
  end

  def test_it_

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
