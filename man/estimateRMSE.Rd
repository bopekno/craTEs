% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/estimateRMSE.R
\name{estimateRMSE}
\alias{estimateRMSE}
\title{Estimates the RMSE for gene expression predicted from the TE subfamily activities}
\usage{
estimateRMSE(
  E_centered,
  N,
  treatment_group,
  control_group,
  idx_training,
  idx_val
)
}
\arguments{
\item{E_centered}{matrix of normalized gene expression values with genes as rows and samples as columns}

\item{N}{TE cis-regulatory predictor matrix with genes as rows and TE subfamilies as columns}

\item{treatment_group}{vector with the name of treated samples (must correspond to columns in E_centered)}

\item{control_group}{vector with the name of control samples (must correspond to columns in E_centered)}

\item{idx_training}{indexes the training observations}

\item{idx_val}{indexes the validation observations}
}
\value{
the estimated RMSE for the difference in gene expression predicted from the TE activities
}
\description{
Estimates the differential activities of TE subfamilies by multiple regression,
and uses the activities estimated on the training observations to estimate the
root mean squared error (RMSE) on the validation observations
}
