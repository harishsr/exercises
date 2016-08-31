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
