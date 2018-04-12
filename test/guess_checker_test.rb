require 'minitest/autorun'
require 'minitest/pride'
require './lib/guess_checker'
require './lib/color_generator'
require 'pry'

class GuessCheckerTest < Minitest::Test
  def test_set_guess
    guess_checker = GuessChecker.new

    guess_checker.get_guess("rrbb")

    assert_equal ["r","r","b","b"], guess_checker.guess
  end

  def test_correct_elements

    guess_checker = GuessChecker.new
    guess_checker.get_guess("rrbb")
    guess_checker.answer = ["y", "b", "g", "g"]

    assert_equal 1, guess_checker.correct_elements
  end


  def test_correct_postion
    guess_checker1 = GuessChecker.new
    guess_checker1.get_guess("rrbb")
    guess_checker1.answer = ["y", "b", "g", "g"]

    guess_checker2 = GuessChecker.new
    guess_checker2.get_guess("ybbb")
    guess_checker2.answer = ["y", "b", "g", "y"]


    assert_equal 0, guess_checker1.correct_positions
    assert_equal 2, guess_checker2.correct_positions
  end

end
