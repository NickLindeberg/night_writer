require "minitest/autorun"
require 'minitest/pride'
require 'pry'
require './lib/alphabet_to_braille.rb'

class AlphabetToBrailleTest < Minitest::Test

  def test_it_exists
    atb = AlphabetToBraille.new
    assert_instance_of AlphabetToBraille, atb
  end

end
