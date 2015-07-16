require 'prime'

class Raindrops
  def self.convert(num)
    @result, @word = "", ""
    Prime.prime_division(num).map do |e, f| 
      @word = 'Pling' if e == 3
      @word = 'Plang' if e == 5
      @word = 'Plong' if e == 7
      @result << @word unless @result.include?(@word)
    end
    @result.empty? ? num.to_s : @result
  end
end