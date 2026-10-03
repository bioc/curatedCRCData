# The 34 datasets this package has provided since its initial release; this
# list guards the Zenodo manifest against accidental row loss.
expected_datasets <- c(
    "GSE11237_eset", "GSE12225.GPL3676_eset", "GSE12945_eset",
    "GSE13067_eset", "GSE13294_eset", "GSE14095_eset", "GSE14333_eset",
    "GSE16125.GPL5175_eset", "GSE17536_eset", "GSE17537_eset",
    "GSE17538.GPL570_eset", "GSE18105_eset", "GSE2109_eset",
    "GSE21510_eset", "GSE21815_eset", "GSE24549.GPL5175_eset",
    "GSE24550.GPL5175_eset", "GSE2630_eset", "GSE26682.GPL570_eset",
    "GSE26682.GPL96_eset", "GSE26906_eset", "GSE27544_eset",
    "GSE28702_eset", "GSE3294_eset", "GSE33113_eset", "GSE39582_eset",
    "GSE3964_eset", "GSE4045_eset", "GSE4526_eset", "GSE45270_eset",
    "TCGA.COAD_eset", "TCGA.READ_eset", "TCGA.RNASeqV2.READ_eset",
    "TCGA.RNASeqV2_eset"
)

manifest <- read.csv(system.file("extdata", "zenodo-manifest.csv",
                                 package = "curatedCRCData"))

test_that("manifest is complete and well-formed", {
    expect_setequal(manifest$dataset, expected_datasets)
    expect_false(anyDuplicated(manifest$dataset) > 0)
    expect_identical(manifest$filename, paste0(manifest$dataset, ".rda"))
    expect_true(all(grepl("^[0-9a-f]{32}$", manifest$md5)))
    expect_true(all(grepl(
        "^https://zenodo\\.org/records/[0-9]+/files/.+\\?download=1$",
        manifest$url)))
    expect_true(all(manifest$size_bytes > 0))
})

test_that("manifest, fixtures, and data/ stubs are in lock-step", {
    fixtures <- sub("\\.rda$", "", list.files(
        system.file("extdata", "testdata", package = "curatedCRCData"),
        pattern = "\\.rda$"))
    expect_setequal(fixtures, expected_datasets)
    stubs <- data(package = "curatedCRCData")$results[, "Item"]
    expect_setequal(stubs, expected_datasets)
})

test_that("no-argument call lists the datasets", {
    expect_setequal(curatedCRCData(), expected_datasets)
})

test_that("getter returns ExpressionSets from offline fixtures", {
    eset <- curatedCRCData("GSE3294_eset", test = TRUE)
    expect_s4_class(eset, "ExpressionSet")
    expect_gt(ncol(eset), 0)
    esets <- curatedCRCData(c("GSE2630_eset", "GSE3294_eset"), test = TRUE)
    expect_type(esets, "list")
    expect_named(esets, c("GSE2630_eset", "GSE3294_eset"))
    expect_s4_class(esets[[1]], "ExpressionSet")
})

test_that("unknown dataset names give an informative error", {
    expect_error(curatedCRCData("NOT_A_DATASET"), "Unknown dataset")
    expect_error(curatedCRCData("NOT_A_DATASET", test = TRUE),
                 "Unknown dataset")
})

test_that("data() stubs create a working binding", {
    e <- new.env()
    data("GSE3294_eset", package = "curatedCRCData", envir = e)
    expect_true(exists("GSE3294_eset", envir = e))
    # force the delayed binding under the check guard so .stubLoad() runs
    # and resolves to the offline fixture (no network)
    old <- Sys.getenv("_R_CHECK_PACKAGE_NAME_", unset = NA)
    Sys.setenv("_R_CHECK_PACKAGE_NAME_" = "curatedCRCData")
    on.exit(if (is.na(old)) Sys.unsetenv("_R_CHECK_PACKAGE_NAME_") else
        Sys.setenv("_R_CHECK_PACKAGE_NAME_" = old), add = TRUE)
    expect_s4_class(e$GSE3294_eset, "ExpressionSet")
})

test_that("full download works (opt-in; set RUN_FULL_DOWNLOAD_TESTS=1)", {
    skip_on_bioc()
    skip_if(!nzchar(Sys.getenv("RUN_FULL_DOWNLOAD_TESTS")))
    skip_if_offline("zenodo.org")
    # smallest dataset in the collection
    eset <- curatedCRCData("TCGA.RNASeqV2.READ_eset")
    expect_s4_class(eset, "ExpressionSet")
    # second call must hit the cache (no download message)
    expect_silent(
        eset2 <- curatedCRCData("TCGA.RNASeqV2.READ_eset"))
    expect_identical(dim(eset), dim(eset2))
})
