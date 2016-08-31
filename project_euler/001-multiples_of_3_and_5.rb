class Multiples
  attr_accessor :max, :multiples

  def initialize( max )
    @max = max
    @multiples = []
  end

  def calculate_sum
    (1...max).each do |num|
      of_three(num)
      of_five(num)
    end
    multiples.uniq.inject(:+)
  end

  private

  def of_three(num)
    multiples.push(num) if ( num % 3 == 0 )
  end

  def of_five(num)
    multiples.push(num) if ( num % 5 == 0 )
  end
end
