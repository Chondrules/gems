require 'test/unit'

class TestWordsFromString < Test::Unit::TestCase
  def test_empty_string
    assert_equal([], words_from_string(""))
    assert_equal([], words_from_string("    "))
  end
end

def sorted_word_count(list)
  count = Hash.new(0)
  for w in list
    count[w] += 1
  end
  sorted = count.sort_by {|word, count| count}
end

def words_from_string(s)
  s.downcase.scan(/[\w']+/)
end

#build a string from ARGV, is there a library way?
input = ""
ARGV.each do |thing|
  input += " " + thing
end

#break array up from string back into array lower cased
words = words_from_string(input)

#sort the words
r = sorted_word_count(words)
r.each do |w,c|
  puts "#{w}: #{c}"
end
