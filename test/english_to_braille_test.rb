require "minitest/autorun"
require 'minitest/pride'
require 'pry'
require './lib/english_to_braille.rb'

class EnglishToBrailleTest < Minitest::Test

  def test_it_exists
    etb = EnglishToBraille.new
    assert_instance_of EnglishToBraille, etb
  end

  def test_it_translates_single_letters
    etb = EnglishToBraille.new
    expected_a = ["0.", "..", ".."]
    expected_z = ["0.", ".0", "00"]
    binding.pry
    assert_equal expected_a, etb.translate_e_to_b("a")
    assert_equal expected_z, etb.translate_e_to_b("z")
  end

  # def test_it_translates_multiple_letters
  #   etb = EnglishToBraille.new
  #   expected_a = ["0.", "..", ".."]
  #   expected_z = ["0.", ".0", "00"]
  #   binding.pry
  #   assert_equal expected_a, etb.translate_e_to_b("a")
  #   assert_equal expected_z, etb.translate_e_to_b("z")
  end


end
