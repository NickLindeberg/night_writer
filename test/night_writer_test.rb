require "minitest/autorun"
require 'minitest/pride'
require 'pry'
require './lib/night_writer.rb'

class NightWriterTest < Minitest::Test

  def test_it_exists
    nw = NightWriter.new
    assert_instance_of NightWriter, nw
  end

  def test_it_translates_single_letters
    nw = NightWriter.new
    expected_a = ["0.", "..", ".."]
    expected_z = ["0.", ".0", "00"]
    binding.pry
    assert_equal expected_a, nw.translate_e_to_b("a")
    assert_equal expected_z, nw.translate_e_to_b("z")
  end

  # def test_it_translates_multiple_letters
  #   etb = EnglishToBraille.new
  #   expected_a = ["0.", "..", ".."]
  #   expected_z = ["0.", ".0", "00"]
  #   binding.pry
  #   assert_equal expected_a, etb.translate_e_to_b("a")
  #   assert_equal expected_z, etb.translate_e_to_b("z")
  #end


end
