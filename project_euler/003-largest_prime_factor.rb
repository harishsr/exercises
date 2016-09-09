# The prime factors of 13195 are 5, 7, 13 and 29.
# What is the largest prime factor of the number 600851475143 ?

require 'prime'

class PrimeFactor < Prime
  def self.largest( num )
    factors = prime_division(num)
    factors.flatten.sort.last
  end
end

puts PrimeFactor.largest(600851475143)
