#This code is used to merget various csv files into one single file
load_data <- function(path) { 
  files <- dir(path, pattern = '\\.csv', full.names = TRUE)
  tables <- lapply(files, read.csv)
  do.call(rbind, tables)
}
#F:/My-classes/tidy datasets
nhdsMasterData<-load_data("F:/My-classes/tidy datasets")
#data look up for verification
head(nhdsMasterData)
#writing data to csv file
write.csv(nhdsMasterData,"nhdsMasterData.csv")

