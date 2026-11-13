rm(list = ls())
library(seqinr)

# Load sequence
mito_fasta <- read.fasta('NC_012920.fasta')
mito_seq <- mito_fasta$NC_012920.1

# print length of sequence
mito_seq_length <- length(mito_seq)
cat('Length of sequence:', mito_seq_length, 'nucleotides', "\n")

# call nucleo_content function
source("BiostatisticsExercise.R")

nucleo_content(mito_seq)
cat('Nucleotide content of original sequence:', nucleo_content(mito_seq))

# call create_complement function
complement <- create_complement(mito_seq)

# determine nucleotide content of complement
nucleo_content(complement)

## 7. Moving average ## 
mov_avg <- function(seqv) {
  
  # define window length
  window <- 200
  
  # define sequence length
  n <- length(seqv)
  
  # where to stop and start
  aprop <- rep(0, n - window + 1)
  gprop <- rep(0, n - window + 1)
  cprop <- rep(0, n - window + 1)
  tprop <- rep(0, n - window + 1)
  

  for(i in 1:(n-window+1)) {
    # subsection of sequence with 200 nucleotides
    mini_seq <- seqv[i:(i+window-1)]
    
    # determine proportion of nucleotides in window
    aprop[i] <- sum(mini_seq == 'a') / window
    gprop[i] <- sum(mini_seq == 'g') / window
    cprop[i] <- sum(mini_seq == 'c') / window
    tprop[i] <- sum(mini_seq == 't') / window
  }
  
  # faceted plots
  op <- par(mfrow=c(2,2))
  
  plot(1:(n-window+1), aprop,
       type='l', xlab='position', ylab='proportion', main='A')
  
  plot(1:(n-window+1), gprop,
       type='l', xlab='position', ylab='proportion', main='G')
  
  plot(1:(n-window+1), cprop,
       type='l', xlab='position', ylab='proportion', main='C')
  
  plot(1:(n-window+1), tprop,
       type='l', xlab='position', ylab='proportion', main='T')
}

mov_avg(mito_seq)


## 8.  ##


