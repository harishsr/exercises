var hamming = {
  compute: function (nucleotide1, nucleotide2) {
    var hammingDist = 0;
    if (nucleotide1.length !== nucleotide2.length){
      throw new Error("DNA strands must be of equal length.");
    } else { 
      for(i=0; i < nucleotide1.length; i++){
        if (nucleotide1[i] !== nucleotide2[i]) { hammingDist += 1 }
      }
    }
    return hammingDist;
  }
};

module.exports = hamming;
