test_that("int vector of 0 with length one are equal", {

  expect_equal(integer(1), 0L)
})

f1 <- function(...) {
  withr::defer(2)
  data <- dplyr::slice(mtcars, 0L)
}

f1()


f2 <- function() {
  data <- dplyr::slice(mtcars, integer(1))
}

f2()



f3 <- function(...) {
  withr::defer(2)
  integer(1) # works
  message('reaching this')
  data <- dplyr::slice(mtcars, integer(1))
}

f3()
