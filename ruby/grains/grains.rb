class Grains
  def self.all_grains
    @grains_array, grains_on = [], 1
    64.times do 
      @grains_array << grains_on
      grains_on *= 2
    end
  end

  def self.square(number)
    all_grains
    @grains_array[number - 1]
  end

  def self.total
    all_grains
    sum = 0
    @grains_array.each{|n| sum += n }
    sum
  end
end
