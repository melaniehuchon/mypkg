#' Multivariate normal distribution density
#'
#' Function to compute the value of the density of a multivariate normal distribution.
#'
#' @param x a matrix, with \code{n} columns (the observations) and \code{p} rows
#' @param mean a vector of means
#' @param varcovM a variance-covariance matrix
#' @param Log a logical parameter, with default value to \code{TRUE}
#'
#' @return a list containing the matrix \code{x}, and a vector of length \code{n}
#' of the multivariate normal distribution density values at those points.
#' @export
#'
#' @importFrom mvtnorm dmvnorm
#'
#' @examples
#' matrice <- cbind(c(1,2), c(3,4))
#' mean <- c(1, 1)
#' varcov <- diag(1, 2)
#' mvnpdf(x = matrice, mean = mean, varcovM = varcov)

mvnpdf <- function(x, mean =  rep(0, nrow(x)), varcovM = diag(nrow(x)), Log = TRUE){
  n <- length(mean)

  if(Log){
    f <- (-(1/2) * t(x - mean) %*% solve(varcovM) %*% (x - mean)) - ((n/2) * log(2*pi) + (1/2) * det(varcovM))
  }else{
    f <- exp(-(1/2) * t(x - mean) %*% solve(varcovM) %*% (x - mean)) / sqrt(((2*pi)^n) * det(varcovM))
  }

  res <- list(x = x, y = diag(f))
  class(res) <- "mvnpdf"
  return(res)
}
