require './lib/dialogue'
require './lib/guess_checker'

dialogue = Dialogue.new
guess_checker = GuessChecker.new

dialogue.welcome

user_input = ""
until user_input == "q" || user_input == "quit"
  user_input = gets.chomp
  if user_input == "p" || user_input == "play"
    dialogue.play
  end

  if user_input.strip.length == 4
    guess_checker.get_guess(user_input)
    puts "You have #{guess_checker.correct_elements} correct colors."
    puts "You have #{guess_checker.correct_positions} colors in the correct position."
  end

  if user_input == 'c'
    puts "Cheater! the correct sequence is #{guess_checker.answer.join}."
  end

end















#   if user_input == 'p'
#     puts dialogue.play
#     user_input = gets.chomp
#
#     if guess_checker.correct?
#       puts dialogue.end
#     else
#       puts "Incorrect, guess again."
#     end
#
#
#   elsif user_input == 'i'
#     puts dialogue.instruction
#   elsif user_input == 'q'
#     puts "game over"
#     break
#   elsif user_input == 'c'
#     puts guess_checker.answer
#   end
