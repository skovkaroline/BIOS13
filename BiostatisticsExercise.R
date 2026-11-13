rm(list = ls())
install.packages('seqinr')
library(seqinr)

## Load fasta file
mito_fasta <- read.fasta('NC_012920.fasta')
mito_fasta

mito_seq <- mito_fasta$NC_012920.1

## 4. Determine proportion of nucleotides in sequence ##
nucleo_content <- function(seqv) {
  # sum of A
  sum_a <- sum(seqv == 'a')
  
  # sum of G
  sum_g <- sum(seqv == 'g')
  
  # sum of C
  sum_c <- sum(seqv == 'c')
  
  # sum of T
  sum_t <- sum(seqv == 't')
  
  # print percentage of each nucleotide 
  cat('G : ', sum_a / length(seqv) * 100, '%\n', sep='')
  cat('C : ', sum_g / length(seqv) * 100, '%\n', sep='')
  cat('A : ', sum_c / length(seqv) * 100, '%\n', sep='')
  cat('T : ', sum_t / length(seqv) * 100, '%\n', sep='')
  
}

# perform function on mitochondrial sequence
nucleo_content(mito_seq)

## 5. Reverse complement ## 
# Create complementary sequence
create_complement <- function(seqv) {
  # length of sequence
  n <- length(seqv)
  
  # placeholder vector of length n
  rev_seq <- rep('x', n)

  # complementary bases 
  rev_seq[seqv == 'a'] <- 't'
  rev_seq[seqv == 'g'] <- 'c'
  rev_seq[seqv == 'c'] <- 'g'
  rev_seq[seqv == 't'] <- 'a'

  # # reverse order of nucleotides
  # rev_seq <- rev_seq[n:1]
  
  return(rev_seq)
}

head(mito_seq)
head(create_complement(mito_seq))



