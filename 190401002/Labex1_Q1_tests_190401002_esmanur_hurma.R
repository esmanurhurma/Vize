

library(testthat)

rm(list = ls())


if (file.exists("~/MapsThatChangedOurWorld_StoryMap_Data.csv")) {
  file.remove("~/MapsThatChangedOurWorld_StoryMap_Data.csv")
}

source("Labex1_Q1_190401002_esmanur_hurma.R")
