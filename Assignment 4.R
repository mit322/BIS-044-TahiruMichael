surv <- read.csv("city-of-st-Louis-survery.csv")
decade <- read.csv("city-of-st-louis-decode.csv")
surveyDF <- data.frame(surv)
decodeDF <- data.frame(decode)
OwnerIndex <- grep("Owner", colnames(surveyDF))[1]
for (i in 1:nrow(surveyDF)){
 name <- surveyDF[I,OwnerIndex]
 if(!grepl("^A" ,name)){
    surveyDF <- surveyDF[-C(i),]
  }
} 

rownames(surveyDF)= paste("", 1:nrow(surveyDF))

#Filter
rownames(surveyDF[order(surveyDF$land, decreasing = T),])[1:10]