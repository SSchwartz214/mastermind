class Dialogue

  def welcome
    puts "Welcome to MASTERMIND\n Would you like to (p)lay, read the (i)nstructions, or (q)uit?
    >"
  end

  def play
    puts "I have generated a beginner sequence with four elements made up of: (r)ed,
    (g)reen, (b)lue, and (y)ellow. Use (q)uit at any time to end the game.
    What's your guess?"
  end

  def instuctions
    puts "A random sequence of 4 colors has been generated.  The object of the
    game is for you to correctly guess this sequence.  When prompted enter the
    the first letter of any 4 color sequence.  For example if you want to guess
    'red, yellow, blue, green' you would enter 'rybg'.  To start, type (p)lay."  
  end

  def end
    puts "Congratulations! You guessed the sequence #{answer} in #{num_guesses} guesses over #{time}.

    Do you want to (p)lay again or (q)uit?"
  end

end
