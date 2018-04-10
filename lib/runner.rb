require './lib/dialogue'

puts dialogue.welcome

user_input = ""
  if user_input == 'p'
    puts dialogue.play
    user_input = gets.chomp

    if guess_checker.correct?
      puts dialogue.end
    else
      puts "Incorrect, guess again."
    end


  elsif user_input == 'i'
    puts dialogue.instruction
  elsif user_input == 'q'
    puts "game over"
    break
  elsif user_input == 'c'
    puts guess_checker.answer
  end
  
