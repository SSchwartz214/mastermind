require './lib/color_generator'

class GuessChecker
  attr_reader :answer,
              :guess


  def initialize(answer, guess)
    @answer = ColorGenerator.new.generate_answer
    @guess = guess

  end

  def correct_colors
    


  def correct?
    guess == answer
  end

  def feedback
      if correct?
        "Correct!"
      else
        "Incorrect."
      end
  end
  #
  # # def correct_element_count(guess)
  # #     element_count = 0
  # #     correct_array = @answer.dup
  # #     guess.chars.each do |check|
  # #       correct_array.each_with_index do |char, index|
  # #         if check == char
  # #           correct_array[index] = nil
  # #           element_count += 1
  # #           break
  # #           binding.pry
  # #         end
  # #       end
  # #     end
  # #     element_count
  # # end

end
