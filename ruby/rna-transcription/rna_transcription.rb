class Complement
 @strand = { d: 'GCTA', r: 'CGAU' }

 def self.of_dna(rna)
  raise_arg true, rna
  rna.tr(@strand[:d], @strand[:r])
 end

 def self.of_rna(dna)
  raise_arg false, dna
  dna.tr(@strand[:r], @strand[:d])
 end

 private   
   def self.raise_arg(dna, strand)
    dna == true ? na = /[GCTA]/ : na = /[CGAU]/
    raise ArgumentError if na.match(strand).nil?
   end
end