% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/estimate_rmse_crossval.R
\name{estimate_rmse_crossval}
\alias{estimate_rmse_crossval}
\title{Parallelized RMSE estimation using cross-validation
Computes the RMSE in the context of a parallelizable cross-validation scheme,
where the gene space is split according to the number of folds k.
k-1 folds are used for training, and the remaining fold is used as a validation fold to estimate the RMSE}
\usage{
estimate_rmse_crossval(
  preprocessed,
  control_group,
  treatment_group,
  N_list,
  N_metadata,
  folds,
  f
)
}
\arguments{
\item{preprocessed}{data produced by preprocess_E_N_for_activities()}

\item{control_group}{vector containing the names of the control samples (column names in preprocessed$E_centered)}

\item{treatment_group}{vector containing the sames of the treatment samples (column names in preprocessed$E_centered)}

\item{N_list}{list of the different N matrices. Rows must already correspond to those of preprocessed$E_centered}

\item{N_metadata}{dataframe with a number of rows equal to the number of elements in N_list}

\item{folds}{vector of the same length as the number of observations in E_centered, with integers from 1:nFolds, each defining a fold}

\item{f}{fold index for which to estimate the RMSE}
}
\value{
the dataframe \code{N_metadata}, modified with an additional column containing the estimated RMSEs
}
\description{
Parallelized RMSE estimation using cross-validation
Computes the RMSE in the context of a parallelizable cross-validation scheme,
where the gene space is split according to the number of folds k.
k-1 folds are used for training, and the remaining fold is used as a validation fold to estimate the RMSE
}
