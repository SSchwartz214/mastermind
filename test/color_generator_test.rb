require 'minitest/autorun'
require 'minitest/pride'
require './lib/color_generator'
require 'pry'

class ColorGeneratorTest < Minitest::Test

  def test_it_exists
    color_generator = ColorGenerator.new

    assert_instance_of ColorGenerator, color_generator
  end

  def test_generate_answer
      color_generator = ColorGenerator.new
      generate_answer = color_generator.generate_answer

      assert_instance_of Array, generate_answer
      assert_equal 4, generate_answer.length

      assert_instance_of String, generate_answer[0]
      actual = (generate_answer[0] == "r") || (generate_answer[0] == "b") || (generate_answer[0] == "g") || (generate_answer[0] == "y")
  end

end
