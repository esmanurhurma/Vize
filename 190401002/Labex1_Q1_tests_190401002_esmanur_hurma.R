library(testthat)

rm(list = ls())


if (file.exists("~/MapsThatChangedOurWorld_StoryMap_Data.csv")) {
  file.remove("~/MapsThatChangedOurWorld_StoryMap_Data.csv")
}

source("Labex1_Q1_190401002_esmanur_hurma.R")

test_that("~/MapsThatChangedOurWorld_StoryMap_Data.csv dosyası aktif dizinde mevcuttur", {
  expect_true(file.exists("~/MapsThatChangedOurWorld_StoryMap_Data.csv"))
})


test_that("maps adlı değişken Global Workspace'de mevcuttur", {
  expect_true(exists("maps", envir = .GlobalEnv))
})


test_that("maps nesnesi bir data.frame'dir", {
  expect_is(maps, "data.frame")
})

test_that("maps adlı data.frame'in ilk sütunun adı 'City' olmalıdır", {
  expect_equal(names(maps)[1], "City")
})


