#KNN

library(base)
library(class)
library(mlbench)
library(caret)
library(e1071)
data(Sonar)
class(Sonar)
A = Sonar
data=Sonar[base::sample(nrow(Sonar)),]
train=data[1:150,]
test = data[151:nrow(data),]
nrow(train)
nrow(test)
X_train = subset(train,select= -Class)
Y_train =  train$Class

X_test = subset(test,select= -Class)
Y_test = test$Class

model_knn = knn(X_train,X_test,cl=Y_train,k=6)

#confussion matrix
confu_matrix = base::table(Y_test,model_knn)


Accuracy = sum(diag(confu_matrix))/sum(confu_matrix)*100
Accuracy 
print(paste0(Accuracy,"%"))

