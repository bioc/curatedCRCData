\name{curatedCRCData-package}
\alias{curatedCRCData-package}
\docType{package}
\title{Clinically Annotated Data for the CRC Cancer Transcriptome}
\description{The curatedCRCData package provides manually curated
  clinical data and uniformly processed expression data for gene
  expression analysis in patients with colorectal cancer.

  Note: For staging, the "summarystage" was curated as using information on the pathologic T, N, and M stages, such that "early" = T stage of Tis through T3 and N0 and M0 and "late" = T stage of 4 and/or any N>0 or M>0}
\details{
  Datasets are hosted on Zenodo and downloaded on first use with
  \code{\link{curatedCRCData}()}, which caches them locally with
  \pkg{BiocFileCache}. Legacy \code{data()} access still works but is
  deprecated and downloads through the same mechanism. See the package
  vignette for rule-based creation of a list of filtered datasets.
}
\author{
Princy Parsana, Markus Riester, Curtis Huttenhower, Levi Waldron

Maintainer: Levi Waldron <lwaldron.research@gmail.com>
}
\examples{
## List all datasets:
curatedCRCData()
## Load one dataset (test=TRUE uses a small offline subset):
eset <- curatedCRCData("GSE3294_eset", test = TRUE)
}
\keyword{package}
