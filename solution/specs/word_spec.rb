require("minitest/autorun")
require("minitest/rg")

require_relative("../word")

class WordTest < MiniTest::Test

  def setup
    @word = Word.new("test")
    #instantiate new word object with string argument
    #to pass into class Word hidden_word parameter
  end

  def test_is_hidden
    assert_equal("****", @word.display)
    #expected value ****
    #actual value - def method .display called by @word object
  end

  def test_word_includes_letter
    assert(@word.include?('t'))
    #testing the inclussion of t taken as the input for guesses
    #is included in the hidden_word string
  end

  def test_reveals_letters
    revealed_t = @word.display(['t'])
    assert_equal("t**t", revealed_t)
    #passing t into display array parameter for
    #expected return t**t
    #actual value - def method .include? in .display
  end

  def test_reveals_whole_word
      #p "letter in word: " + @word.inspect()
    revealed_word = @word.display(['t', 'e', 's'])
    assert_equal("test", revealed_word)
    #pass in all charcters as array arguments in .display Forw
    #expected value test.
    #actual value - def .display method
  end

end
