class Prime

  def factors_of(n)
    factors = []
    n.times do |t|
      unless t === 0
        factors.push(t) if n % t == 0
      end
      break if factors.length == 2
    end
    factors
  end

  def self.nth(n)
    raise ArgumentError if n < 1
    @primes = []
    i = 2
    until @primes.length === n 
      @primes.push(i) if factors_of(i).length === 1
      i += 1
    end
    @primes[n - 1]
  end

end
