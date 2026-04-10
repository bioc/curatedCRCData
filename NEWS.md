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