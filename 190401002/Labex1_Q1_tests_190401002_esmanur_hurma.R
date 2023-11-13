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

test_that("maps adlı data.frame'in 5. sütunun adında 'Title' kelimesi geçmelidir", {
  expect_true(any(grepl("Title", names(maps)[5], ignore.case = TRUE)))
})

test_that("Longitude adlı sütün numeric değerlerden oluşmalıdır", {
  expect_true(all(is.numeric(maps$Longitude)))
})

test_that("idx nesnesi Global Workspace'de mevcuttur", {
  expect_true(exists("idx", envir = .GlobalEnv))
})

test_that("idx nesnesinin tipi (class'ı) integer'dir", {
  expect_equal(class(idx), "integer")
})

test_that("Year adlı sütün numeric değerlerden oluşmalıdır", {
  expect_true(all(is.numeric(maps$Year)))
})


test_that("Longitude adlı sütunun 3., 9. ve 10. elementleri negatif numeric değerler içermelidir", {
  expect_true(all(maps$Longitude[c(3, 9, 10)] < 0))
})

test_that("finalResult adlı değişken vardır, bir data.frame'dir, 3 sütundan oluşmalıdır ve sütun isimleri sırasıyla Longitude, Latitude ve Year olmalıdır", {
  expect_true(exists("finalResult", envir = .GlobalEnv))
  expect_is(finalResult, "data.frame")
  expect_equal(ncol(finalResult), 3)
  expect_equal(names(finalResult), c("Longitude", "Latitude", "Year"))
})






