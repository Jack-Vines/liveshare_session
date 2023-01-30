install.packages("testthat", repos = "http://cran.us.r-project.org")

library(testthat)

source("functions.R")

test_that("fahr_to_celsius function", {
  expect_equal(fahr_to_celsius(32), 0)
  expect_equal(fahr_to_celsius(212), 100)
  expect_equal(fahr_to_celsius(98.6), 37)
})

test_that("fibonacci_generator function", {
  expect_equal(fibonacci_generator(3), 1)
  expect_equal(fibonacci_generator(5), 3)
  expect_equal(fibonacci_generator(10), 34)
  expect_equal(fibonacci_generator(20), 4181)
})

test_that("vowel_counter function", {
  expect_equal(vowel_counter("hello"), 2)
  expect_equal(vowel_counter("hello world"), 3)
  expect_equal(vowel_counter("this is a sentence with vowels"), 8)
})

test_that("reverse_sentence function", {
  expect_equal(reverse_sentence("hello world"), "world hello")
  expect_equal(reverse_sentence("this is a sentence"), "sentence a is this")
  expect_equal(reverse_sentence("this is a sentence with words"), "words with sentence a is this")
})

test_that("is_palindrome function", {
  expect_equal(is_palindrome("racecar"), TRUE)
  expect_equal(is_palindrome("hello"), FALSE)
  expect_equal(is_palindrome("hannah"), TRUE)
  expect_equal(is_palindrome("race car"), TRUE)
  expect_equal(is_palindrome("a h i ha"), TRUE)
})


