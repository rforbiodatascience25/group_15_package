test_that("Correct string runs with no error", {
  expect_no_error("SSFPTAYYHQN")
})

test_that("Empty string causes error", {
  expect_error(AA_counts_plot(""))
})

