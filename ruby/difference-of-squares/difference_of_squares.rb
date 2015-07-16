class Squares

  def initialize(num)
    @num = num
  end

  def square_of_sums
    @sum_of = 0
    (0..@num).each { |i| @sum_of += i }
    @sum_of = @sum_of ** 2
  end

  def sum_of_squares
    @square_of = 0
    (0..@num).each { |i| @square_of += (i ** 2) }
    @square_of
  end

  def difference
    square_of_sums
    sum_of_squares
    (@sum_of - @square_of)
  end
end