require 'active_support'
require 'active_support/core_ext'

class Squares
  def initialize(num)
    @num = num 
  end
  
  def square_of_sum
    sums = (1..@num).sum
    square = sums ** 2
  end

  def sum_of_squares
    sum = 0
    (1..@num).each{ |n| sum = sum + n ** 2 }
    sum
  end

  def difference
    square_of_sum - sum_of_squares
  end
end