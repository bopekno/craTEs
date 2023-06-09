% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/get_pseudocounts.R
\name{get_pseudocounts}
\alias{get_pseudocounts}
\title{Adds a pseudocount to the count table}
\usage{
get_pseudocounts(count_table, q = 0.05)
}
\arguments{
\item{count_table}{gene count table with rows as genes, columns as samples}

\item{q}{quantile of non-zero values used as a pseudocount in each sample (default: q = 0.05)}
}
\value{
count table with added pseudocounts
}
\description{
Ccomputes a per-sample pseudocount based on a quantile of non-zero values (by default 5\%)
and adds them to count table (genes are rows, samples are columns).
Useful to replace zero values before logging
}
