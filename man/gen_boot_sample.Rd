% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/Boot_Sample.R
\name{gen_boot_sample}
\alias{gen_boot_sample}
\title{A helper function to generate a multiplier bootstrap sample}
\usage{
gen_boot_sample(epsilon_mat, obs_ic, center = TRUE, param_est = 0, rate = "n")
}
\arguments{
\item{epsilon_mat}{The matrix of Normal observations with independent
observations from a normal with an identity Covariance matrix.}

\item{obs_ic}{The empirical estimate of the influence curve to be
used in the multiplier bootstrap.}

\item{center}{Boolean.  If true, the bootstrapped data will be centered at
zero.  Otherwise, it will be centered at param_est.}

\item{param_est}{The estimated parameters which will be the mean of the
multiplier bootstrap sample.}

\item{rate}{Normalizing constant. Should either be \code{"n"} or
\code{"rootn"}.}

\item{n}{Number of desired observations from your bootstrapped sample.}
}
\value{
A sample of size \code{n} generated using a multiplier bootstrap
with a variance given by t(\code{obs_ic})%*%\code{obs_ic}.
}
\description{
A helper function to generate a multiplier bootstrap sample
}
