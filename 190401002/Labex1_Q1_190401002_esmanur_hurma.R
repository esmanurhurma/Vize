#Soru 1.1
url <- "https://raw.githubusercontent.com/scizmeli/Red/master/MapsThatChangedOurWorld_StoryMap_Data.csv"
destfile <- "~/MapsThatChangedOurWorld_StoryMap_Data.csv"

download.file(url,destfile)

maps <- read.csv("~/MapsThatChangedOurWorld_StoryMap_Data.csv",sep=";")
