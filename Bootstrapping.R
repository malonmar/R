bootstrapping = function(matrizIn)
{
  # Create random of size of matrizIn
  aleatorios=matrix(sample(1:nrow(matrizIn),length(matrizIn),replace=T), nrow(matrizIn))
  # Put the elements of matrizIn of positions of aleatorios matrix
  # Sum in each column number of rows multiplied by number of that column -1
  matriz=matrix(matrizIn[aleatorios+t(matrix(seq(0, nrow(matrizIn)*(ncol(matrizIn)-1), nrow(matrizIn)),ncol(matrizIn), nrow(matrizIn)))], nrow(matrizIn))
  return(matriz)
}
