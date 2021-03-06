% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/RcppExports.R
\name{MCMC_learning}
\alias{MCMC_learning}
\title{Gibbs sampler for learning models}
\usage{
MCMC_learning(Response_list, Q_list, model, test_order, Test_versions,
  chain_length, burn_in, Q_examinee = NULL, Latency_list = NULL,
  G_version = NA_integer_, theta_propose = 0, deltas_propose = NULL,
  R = NULL)
}
\arguments{
\item{Response_list}{A \code{list} of dichotomous item responses. t-th element is an N-by-Jt matrix of responses at time t.}

\item{Q_list}{A \code{list} of Q-matrices. b-th element is a Jt-by-K Q-matrix for items in block b.}

\item{model}{A \code{charactor} of the type of model fitted with the MCMC sampler, possible selections are
"DINA_HO": Higher-Order Hidden Markov Diagnostic Classification Model with DINA responses;
"DINA_HO_RT_joint": Higher-Order Hidden Markov DCM with DINA responses, log-Normal response times, and joint modeling of latent
speed and learning ability;
"DINA_HO_RT_sep": Higher-Order Hidden Markov DCM with DINA responses, log-Normal response times, and separate modeling of latent
speed and learning ability;
"rRUM_indept": Simple independent transition probability model with rRUM responses
"NIDA_indept": Simple independent transition probability model with NIDA responses
"DINA_FOHM": First Order Hidden Markov model with DINA responses}

\item{test_order}{A \code{matrix} of the order of item blocks for each test version.}

\item{Test_versions}{A \code{vector} of the test version of each learner.}

\item{chain_length}{An \code{int} of the MCMC chain length.}

\item{burn_in}{An \code{int} of the MCMC burn-in chain length.}

\item{Q_examinee}{Optional. A \code{list} of the Q matrix for each learner. i-th element is a J-by-K Q-matrix for all items learner i was administered.}

\item{Latency_list}{Optional. A \code{list} of the response times. t-th element is an N-by-Jt matrix of response times at time t.}

\item{G_version}{Optional. An \code{int} of the type of covariate for increased fluency (1: G is dichotomous depending on whether all skills required for
current item are mastered; 2: G cumulates practice effect on previous items using mastered skills; 3: G is a time block effect invariant across
subjects with different attribute trajectories)}

\item{theta_propose}{Optional. A \code{scalar} for the standard deviation of theta's proposal distribution in the MH sampling step.}

\item{deltas_propose}{Optional. A \code{vector} for the band widths of each lambda's proposal distribution in the MH sampling step.}

\item{R}{Optional. A reachability \code{matrix} for the hierarchical relationship between attributes.}
}
\value{
A \code{list} of parameter samples and Metropolis-Hastings acceptance rates (if applicable).
}
\description{
Runs MCMC to estimate parameters of any of the listed learning models.
}
\examples{
\donttest{
output_FOHM = MCMC_learning(Y_real_list,Q_list,"DINA_FOHM",test_order,Test_versions,10000,5000)
}
}
\author{
Susu Zhang
}
