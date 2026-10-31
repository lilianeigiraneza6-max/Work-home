install.packages("dplyr")
library(dplyr)


install.packages('ggplot2')
library('ggplot2')

install.packages('tidyverse')
library('tidyverse')

(nba <- read.csv("D:/Download/students_academic.csv"))
dim(nba)
head(nba,1)
tail(nba)
str(nba)
head(nba$taxonGroup)
class(nba$taxonGroup)
nba$taxonGroup <- as.factor(nba$taxonGroup)
summary(nba)
summary(nba$taxonGroup)
numeric_cols <- sapply(nba, is.numeric)
barplot(as.matrix(nba[, numeric_cols]), beside = TRUE, col = c("Red", "green"))
barplot(as.matrix(nba[, numeric_cols]))


(test <- data.frame(
  student_id = 1:4,
  names = c("Harry","John","Alice","Keneddy"),
  course1 = c(54,NA,61,77),
  course2 = c(29,78,75,NA),
  class = c("C","A","B","B")
))
is.na(test)
View(test)
(mean(test$course1, na.rm = TRUE))

numeric_cols <- sapply(test, is.numeric)
apply(test[, numeric_cols], 1, mean, na.rm = TRUE)

x_variable <- test$course2
y_variable <- test$course1

plot(x_variable, y_variable, 
     xlab = "Course 2", 
     ylab = "Course 1", 
     main = "Scatter Plot")


View(iris)
(boxplot(iris$Sepal.Length~iris$Species,data=iris, main="Title"))


UCBAdmissions
(ucba <- data.frame(UCBAdmissions))
(cross<-xtabs(Freq~Gender+Admit, data=ucba))
(cross<-xtabs(Freq~Gender+Admit, data=ucba[ucba$Dept=="C",]))
View(ucba)

ggplot(data = ucba, aes(x = Dept, y = Freq)) +
  geom_boxplot(fill = "lightblue") +
  geom_jitter(width = 0.2, color = "darkblue")


