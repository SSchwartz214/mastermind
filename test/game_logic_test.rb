require 'minitest/autorun'
require 'minitest/pride'
require './lib/game_logic'
require './lib/color_generator'
require 'pry'

class GameLogicTest < Minitest::Test

  def test_round_has_an_answer
    color_generator = ColorGenerator.new

    game_logic = GameLogic.new

    assert_equal 4, game_logic.answer.length
  end

  # def test_round_has_guess
  #   game_logic = GameLogic.new
  #
  #   assert_equal "rrgg", game_logic.guess("rrgg")
  # end

end
