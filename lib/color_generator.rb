class ColorGenerator

  def initialize
    @colors = ["r", "b", "g", "y"]
  end

  def generate_answer
      @colors.map do |color|
      @colors.sample
    end
  end








end
