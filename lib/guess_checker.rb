require './lib/color_generator'

class GuessChecker
  attr_accessor :guess,
               :answer


  def initialize
    @answer = ColorGenerator.new.generate_answer
    @guess = []
  end

  def get_guess(input)
    @guess = input.chars
  end

  def correct_elements
    correct_elements = 0
    guess.uniq.each do |element|
      if answer.include?(element)
        correct_elements += 1
      end
    end
    correct_elements
  end

  def correct_positions
    correct_positions = 0
    guess.each_with_index do |element, index|
      if guess[index] == answer[index]
        correct_positions += 1
      end
    end
    correct_positions
  end


  #
  # def correct?
  #   guess == answer
  # end
  #
  # def feedback
  #     if correct?
  #       "Correct!"
  #     else
  #       "Incorrect."
  #     end
  # end

end
