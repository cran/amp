% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/rr-msm-ic.R
\name{rr.msm.ic}
\alias{rr.msm.ic}
\title{Estimate both the parameter, and the influence
curves used for estimating the projected risk ratio from a working
marginal structural mean model.}
\usage{
rr.msm.ic(obs_data, what = "both", control = NULL)
}
\arguments{
\item{obs_data}{the observed data.  The first column should be the outcome.}

\item{what}{the desired return value. Should be one of `"ic"`
(influence curve), `"est"` (estimate), or `"both"`.}

\item{control}{any other control parameters to be passed to the estimator.}
}
\value{
If `what` is

- `"est"`, then return the estimated parameter.

- `"ic"`, then return the estimated IC of the parameter estimate.

- `"both"`, then return both the parameter estimate and
corresponding estimated IC.
}
\description{
The function takes a dataset, and will returns the estimate for the
parameter, and or the estimated influence curve at each observation.
The first column of obs_data should be the binary outcome of interest.
}
\details{
Most of this code has been copied and slightly modified from the
ltmle package and is copyrighted by Joshua Schwab under the terms of
the GPL-2 license.

Obtain an estimator of the probability delta = 1 given w
}
\examples{
#not run (make sure to load in SuperLearner if running)
#set.seed(1010)
#fake_dat <- data.frame(y = rbinom(100, size = 1, prob = 0.5),
#                      a = rbinom(100, size =  1, prob = 0.5),
#                       w = matrix(rnorm(500), ncol = 5))
# rr.msm.ic(fake_dat)

}
