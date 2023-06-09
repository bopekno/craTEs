% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/get_tpm_local.R
\name{get_tpm_local}
\alias{get_tpm_local}
\title{Computes TPM from a count table, stores a local copy of the exonic lengths to avoid extra computation}
\usage{
get_tpm_local(
  countTable,
  org = "hg19",
  exonic_lengths_path = NULL,
  redownload_exons = FALSE,
  exons_dir = "../data/temp/"
)
}
\arguments{
\item{countTable}{table with ensembl gene IDs as row names, sample IDs as columns}

\item{org}{organism (defaults to 'hg19')}

\item{exonic_lengths_path}{path to where computed exonic lengths are stored, to avoid recomputing them everytime}

\item{redownload_exons}{forces the download and computation of exon lengths from scratch}

\item{exons_dir}{directory where the gene models get saved}
}
\value{
matrix of TPMs with ensembl id as rows and samples as columns
}
\description{
Computes TPM from a count table, stores a local copy of the exonic lengths to avoid extra computation
}
