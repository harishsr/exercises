# If we list all the natural numbers below 10 that are multiples of 3 or 5, we get 3, 5, 6 and 9. The sum of these multiples is 23.
# Find the sum of all the multiples of 3 or 5 below 1000.

class Multiples
  attr_accessor :max
  attr_reader :multiples

  def initialize( max )
    @max = max
    @multiples = []
  end

  def sum_of_multiples_of_three_and_five
    multiples_of_three_and_five
    multiples.inject(:+)
  end

  def multiples_of_three_and_five
    (1...max).each do |num|
      multiples.push(num) && next if is_a_multiple_of?(num, 3)
      multiples.push(num) if is_a_multiple_of? num, 5
    end
  end

  def is_a_multiple_of?( num, value )
    num % value == 0
  end
end

mul = Multiples.new( 1000 )
puts mul.sum_of_multiples_of_three_and_five
