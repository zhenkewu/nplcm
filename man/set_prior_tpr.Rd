% Generated by roxygen2 (4.1.1): do not edit by hand
% Please edit documentation in R/set-prior-tpr.R
\name{set_prior_tpr}
\alias{set_prior_tpr}
\title{Set true positive rate (TPR) prior ranges}
\usage{
set_prior_tpr(model_options, data_nplcm)
}
\arguments{
\item{model_options}{See \code{\link{nplcm}} function.}

\item{data_nplcm}{See \code{\link{assign_model}} function.}
}
\value{
Parameters for the TPR priors, separately for BrS and SS
}
\description{
Current prior assignment let bacteria NPPCR to have uniform range, viral NPPCR
to have .5-1.0 range. The PCP (a fungus) NPPCR TPR is also set to be .5-1.0; PCP
has no blood culture measurements. Also, not all the bacteria have blood culture
measurments. One question is whether to use informative NPPCR range or non-informative
NPPCR range (0-100%).
}
\details{
DN: 1.make the assignment of prior dependent on the BCX data availability
or species (bacteria)?
}

