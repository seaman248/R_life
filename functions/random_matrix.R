random_matrix <- function(size){
  matrix(nrow = size, ncol = size, sample(c(0,1), replace=T, size=size*size))
}