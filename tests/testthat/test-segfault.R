test_that("int vector of 0 with length one are equal", {

  expect_equal(integer(1), 0L)
})

test_that("works", {
  withr::defer(2)
  data <- dplyr::slice(mtcars, 0L)
})


test_that("works", {
  data <- dplyr::slice(mtcars, integer(1))
})

test_that("does not work", {
  withr::defer(2)
  integer(1) # works
  data <- dplyr::slice(mtcars, integer(1))
})
