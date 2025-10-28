test_that("split codons work", {
  expect_equal(split_codons("atcgatc"),c("atc","gat"))
})
