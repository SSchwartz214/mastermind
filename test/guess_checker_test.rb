require 'minitest/autorun'
require 'minitest/pride'
require './lib/guess_checker'
require './lib/color_generator'
require 'pry'

class GuessCheckerTest < Minitest::Test

  def test_correct?
    guess_checker1 = GuessChecker.new("YYYY", "YYYY")
    guess_checker2 = GuessChecker.new("BYRG", "GGGG")

    assert guess_checker1.correct?
    assert guess_checker2.correct?
  end

  def test_give_feedback
    guess_checker1 = GuessChecker.new("YYYY", "YYYY")
    guess_checker2 = GuessChecker.new("BYRG", "GGGG")

    assert_equal "Correct!", guess_checker1.feedback
    assert_equal "Incorrect, guess again.", guess_checker2.feedback
  end

  # def test_round_has_guess
  #   guess_checker = GuessChecker.new
  #
  #   assert_equal "rrgg", guess_checker.guess("rrgg")
  # end

end
