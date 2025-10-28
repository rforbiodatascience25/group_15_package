test_that("create random sequence", {
  expect_type(generate_dna_sequence(10), "character")
})
