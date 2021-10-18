#' Sieve of Eratosthenes
#'
#' Return all prime numbers up to any given limit.
#' Example of Fortran use
#'
#' @param n integer A given limit
#'
#' @examples
#' sieve_eratosthenes_f(n = 100)
#'
#' @export
sieve_eratosthenes_f <- function(n = 100) {
  B <- rep(0,n)
  resp <- .Fortran("sieveeratosthenes", n = as.integer(n), B = as.integer(B))
  return(resp$B[which(resp$B != 0)])
}
