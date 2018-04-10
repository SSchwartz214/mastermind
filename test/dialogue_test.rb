require 'minitest/autorun'
require 'minitest/pride'
require './lib/dialogue'
require 'pry'
class DialogueTest < Minitest::Test

  def test_it_exists
    dialogue = Dialogue.new

    assert_instance_of Dialogue, dialogue
  end

  def test_it_has_a_welcome_message
    dialogue = Dialogue.new

    expected = "Welcome to MASTERMIND\n Would you like to (p)lay, read the (i)nstructions, or (q)uit?
    >"

    assert_equal expected, dialogue.welcome
  end

  def test_it_has_a_play_message
    dialogue = Dialogue.new

    expected = "I have generated a beginner sequence with four elements made up of: (r)ed,
      (g)reen, (b)lue, and (y)ellow. Use (q)uit at any time to end the game.
      What's your guess?"

    assert_equal expected, dialogue.play
  end

  def test_it_has_an_end_message
    dialogue = Dialogue.new

    expected =
    "Congratulations! You guessed the sequence #{answer} in #{num_guesses} guesses over #{time}.

      Do you want to (p)lay again or (q)uit?"

    assert_equal expected, dialogue.end
  end
end
