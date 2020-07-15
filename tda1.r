train <- read.csv("dataset/train.csv", header = TRUE)
test <- read.csv("dataset/test.csv", header = TRUE)

test.surv <- data.frame(survived = rep("None", nrow(test)), test[,])

data.combined <- rbind(train, test.surv)

str(data.combined)

data.combined$survived <- as.factor(data.combined$survived)
data.combined$pclass <- as.factor(data.combined$pclass)
