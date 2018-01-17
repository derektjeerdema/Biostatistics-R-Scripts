## Biostatistics cheat-sheet ##

#here are a couple functions I scripted

#This "fastq" function finds the phred quality score for fastq format based on a known probability for an incorrect base call in nucleotide data

fastq = function(p){
  
  q = -10 * log10(p)
  
  return(q)
}

#This findp function finds the probability a nucleotide base call is incorrect based off of a known fastq score

findp = function(q){
  p = (10^(-q/10))
  
  return(p)
}

#These functions are invertible, meaning the "q" found in "fastq" can be used in "findp" for the original value for "p" used