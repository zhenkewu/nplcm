% Generated by roxygen2 (4.1.1): do not edit by hand
% Please edit documentation in R/eda.R
\name{plot_logORmat}
\alias{plot_logORmat}
\title{Visualize pairwise log odds ratios (LOR) for data that are available in
both cases and controls}
\usage{
plot_logORmat(data_nplcm, pathogen_display, logOR_rounding = 2)
}
\arguments{
\item{data_nplcm}{See \code{\link{assign_model}}.}

\item{pathogen_display}{The pathogen vector in desired order for display.
It can be of larger length than that of \code{pathogen_BrS}.}

\item{logOR_rounding}{Rounding number of the log odds ratio. Default is 2.}
}
\value{
Figure of LOR matrix and relavent s.e. and significance information.
}
\description{
Visualize pairwise log odds ratios (LOR) for data that are available in
both cases and controls
}
\details{
\code{plot_logORmat} visualizes a matrix of values (log odds ratios here).
Cases' values are on upper right and controls on lower
left. Log odds ratio (LOR) is at the top of the cell.  Below it, its standard
error is in smaller type, using the same color as the LOR.  Then the
estimate is divided by its standard error. If it is less than 1 in
absolute value, we put a plus (red) or minus (blue) when
the Z-stat is between 1-2 in absolute value and put the actual
value when the Z is greater than 2.
}

