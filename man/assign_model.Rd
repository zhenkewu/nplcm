% Generated by roxygen2 (4.1.1): do not edit by hand
% Please edit documentation in R/assign-model.R
\name{assign_model}
\alias{assign_model}
\title{Choose a model to fit}
\usage{
assign_model(data_nplcm, model_options, silent = TRUE)
}
\arguments{
\item{data_nplcm}{Data for model fitting. Details are
\itemize{
\item \code{Mobs} See \code{\link{nplcm}} function.
\item \code{Y} See \code{\link{nplcm}} function.
\item \code{X} See \code{\link{nplcm}} function.
\item \code{Mname} A list of pathogen names. \code{Mname_BrS} for BrS only pathogens,
and \code{Mname_SSonly} for pathogens with only SS measures.
\item \code{taxonomy} A list of pathogen taxonomy. The elements include
\code{taxo_BrS} and \code{taxo_SSonly}. It can be used to represent biological
classifications, such as bacteria (\code{B}) versus virus (\code{V}).
}}

\item{model_options}{See \code{\link{nplcm}} function.}

\item{silent}{Default is \code{TRUE}: print assigned
model descriptions on screen; otherwise, \code{FALSE}.}
}
\value{
A list of information for the selected model:
\itemize{
\item \code{measurement}
\itemize{
\item \code{quality} e.g. "BrS+SS" indicates both BrS and SS measures are
available
\item \code{SSonly} \code{TRUE} for existence of pathogens with only SS measures;
otherwise, \code{FALSE};
\item \code{nest} \code{TRUE} for conditional dependent model; \code{FALSE}
for conditional independent model;
}
\item \code{reg}
\itemize{
\item \code{do_FPR_reg} \code{TRUE} for allowing FPR to be covariate-dependent; \code{FALSE} otherwise;
\item \code{do_Eti_reg} \code{TRUE} for allowing etiology to be covariate-dependent; \code{FALSE} otherwise;
}
}
}
\description{
\code{assign_model} recognizes the model to fit from user input.
}
\details{
\code{assign_model} will also inspect the actual data supplied
 and check if the data conform to user's requested model. The following
 features of data and user inputs are checked against each other:
\enumerate{
\item Available types of measurement quality,
i.e., gold-, silver- or bronze-standard or any combinations;
\item Model for false positive rates: covariate-dependent or not;
\item Model for etiology: covariate-dependent or not.
}
}

