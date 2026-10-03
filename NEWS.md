# curatedCRCData 2.46.0 (continued)

## DOCUMENTATION AND METADATA

* Repaired UTF-8 transcoding damage ("??" artifacts) in 32 dataset man
  pages: author names, journal references, and statistical symbols
  restored (ASCII equivalents).
* biocViews extended to ColonCancerData, MicroarrayData, RNASeqData, and
  GEO for better discoverability.
* Removed the empty FULLVcuratedCRCData_counts.csv placeholder.

# curatedCRCData 2.46.0

## SIGNIFICANT USER-VISIBLE CHANGES

* The 34 datasets are no longer stored inside the package: they are hosted
  on Zenodo and downloaded individually on first use, then cached locally
  with `BiocFileCache`. This shrinks the installed package from ~400 MB to
  a few MB.
* New exported function `curatedCRCData()`: call it with no arguments to
  list available datasets, with one dataset name to get an `ExpressionSet`,
  or with several names to get a named list. `test = TRUE` loads small
  offline subsets bundled with the package (used by examples, tests, and
  the vignette).
* Legacy `data(GSE39582_eset)` access still works (it downloads through the
  same cache, deferred until the object is first used) but is deprecated
  and will be removed in a future release.
* `inst/extdata/createEsetList.R` now loads datasets through the getter; a
  new `test.mode` option in the patientselection config files selects the
  offline subsets.
* The cache is package-specific (`tools::R_user_dir("curatedCRCData",
  "cache")`); delete that directory to reclaim disk space. Downloads are
  verified against md5 checksums recorded in
  `inst/extdata/zenodo-manifest.csv`.

## INTERNAL

* Replaced the never-executed RUnit scaffolding with testthat tests.
* CI restored to R CMD check + BiocCheck + pkgdown via the waldronlab
  reusable workflow (previously reduced to pkgdown-only because checking
  400 MB of data exhausted runner memory).
* Removed `external_data_store.txt` and `Namespace: auto`; explicit
  NAMESPACE exporting only `curatedCRCData()`.

# curatedCRCData 2.43.1

* Updated package maintainer to Levi Waldron (<lwaldron.research@gmail.com>).
* Refactored `DESCRIPTION` to use standard `Authors@R` fields, including maintainer ORCID and funding info (NCI 5U24CA180996).
* Fixed invalid `biocViews` categories to strictly use acceptable ExperimentData terms.
* Replaced the unnecessary `affy` dependency with `Biobase` in the package `Suggests` and the vignette.
* Added a new `CITATION` file pointing to the 2018 Genome Biology meta-analysis paper (PMID: 30253799).
* Initialized Git LFS to properly track `.rda` and `.RData` files.
* Removed deprecated `zzz.R` warning.
* Converted the vignette to RMarkdown (`.Rmd`).

# curatedCRCData 1.0.0

* Initial release of curatedCRCData, a comprehensive resource for clinically-oriented investigation of the colorectal cancer transcriptome.
* It provides clinically-annotated expression data including The Cancer Genome Atlas (TCGA) RNASeqV2 and Agilent mRNA microarray datasets.
* Probesets are mapped to official gene symbols using up-to-date maps.
* All clinical annotations are hand-curated and machine-checked to ensure consistent syntax and maximum retention of available clinical variables. 
* ExpressionSet slots are populated with numerous metadata including PubMed IDs, citations, abstracts, study-specific warnings for retractions and duplicated samples, and probeset <--> gene maps. 
* The package vignette provides examples for selecting patients and datasets based on flexible rules, performing meta-analysis of potential biomarkers, creating publication-ready tables from ExpressionSet metadata, and simple exporting of data tables for non R-users.