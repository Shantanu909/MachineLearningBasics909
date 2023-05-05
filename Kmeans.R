



#K_means

library(cluster)
library(ClusterR)

A=iris[,-5]
 A$Species
kmeans_model = kmeans(A,3)
B = kmeans_model$cluster
comfu_matrix = base::table(iris$Species,B)
comfu_matrix
Accuracy = sum(diag(comfu_matrix))/sum(comfu_matrix)*100
print(paste0(Accuracy,"%"))
Predicted_class1=kmeans_model$cluster[1]
Predicted_class2=kmeans_model$cluster[2]
Predicted_class3=kmeans_model$cluster[3]

plot(A[c("Sepal.Length","Sepal.Width")],col=kmeans_model$cluster,main="Kmeans")
points(kmeans_model$centers[,c("Sepal.Length","Sepal.Width")],col=1:3,pch=15)
