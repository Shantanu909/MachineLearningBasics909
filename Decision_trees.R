#Decision trees

library(rpart)
library(rpart.plot)

A= iris
A
colnames(A)
decisiontree = rpart(formula = Species~.,data = A,method = "Class")
decisiontree=rpart(Species~.,A,method="class")
rpart.plot(decisiontree,type=2)

