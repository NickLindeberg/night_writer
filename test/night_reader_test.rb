require "minitest/autorun"
require 'minitest/pride'
require 'pry'
require './lib/night_reader.rb'

class NightReaderTest < Minitest::Test

  def test_it_exists
    nr = NightReader.new
    assert_instance_of NightReader, nr
  end

  def test_it_gets_

  end

end
