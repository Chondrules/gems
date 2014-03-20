require 'test/unit'
require_relative 'wordcount"

class TestWordsFromString < Test::Unit::TestCase
  def test_empty_string
    assert_equal([], words_from_string(""))
    assert_equal([], words_from_string("    "))
  end
end

