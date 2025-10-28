test_that("translation works", {
  codon_table <- c("AUG" = "M", "UUU" = "F", "GGC" = "G")
  result <- translation(c("AUG", "UUU", "GGC"))
  expect_equal(result, "MFG")
})
