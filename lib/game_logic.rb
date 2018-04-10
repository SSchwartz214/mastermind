require './lib/color_generator'

class GameLogic
  attr_reader :answer


  def initialize
    @answer = ColorGenerator.new.generate_answer

  end

  def correct_element_count(guess)
      element_count = 0
      correct_array = @answer.dup
      binding.pry
      guess.chars.each do |check|
        correct_array.each_with_index do |char, index|
          if check == char
            correct_array[index] = nil
            element_count += 1
            break
          end
        end
      end
      element_count
  end

end
