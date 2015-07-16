class Hamming
  def self.compute(a, b)
    distance = 0
    a.chars.zip(b.chars).count { |l, r| l != r ? distance += 1 : distance += 0 }
    distance
  end
end