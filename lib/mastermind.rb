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
    puts "You have #{guess_checker.correct_elements} correct color(s)."
    puts "You have #{guess_checker.correct_positions} color(s) in the correct position."
  end

  if user_input == 'i' || user_input == "instructions"
    dialogue.instuctions
  end

  if user_input == 'c' || user_input == "cheat"
    puts "Give up? The correct sequence is #{guess_checker.answer.join}."
  end

end
