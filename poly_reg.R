#polynomial regression
A = salary_regression
library(caTools)
library(ggplot2)
poly_reg = lm(formula=Salary~poly(A$ï..Years.experienced,5,raw=TRUE),data = A)
poly_reg
ggplot(data =A,aes(A$ï..Years.experienced,Salary))+geom_point()+stat_smooth(method=lm,formula=y~poly(x,5,raw=TRUE))
