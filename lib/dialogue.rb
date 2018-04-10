class Dialogue

  def welcome
    "Welcome to MASTERMIND\n Would you like to (p)lay, read the (i)nstructions, or (q)uit?
    >"
  end

  def play
    "I have generated a beginner sequence with four elements made up of: (r)ed,
    (g)reen, (b)lue, and (y)ellow. Use (q)uit at any time to end the game.
    What's your guess?"
  end

  def end
    "Congratulations! You guessed the sequence #{answer} in #{num_guesses} guesses over #{time}.

    Do you want to (p)lay again or (q)uit?"
  end

end
