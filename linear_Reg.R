#linear regression
A=salary_regression

install caTools
library(caTools)

linear_reg = lm(formula = Salary~A$ï..Years.experienced,data =A)

Intercept = linear_reg$coefficients[1]
multiplicity = linear_reg$coefficients[2]

salary1 = multiplicity*A$ï..Years.experienced+Intercept

plot(x= A$ï..Years.experienced,y=salary1,lines(x=A$ï..Years.experienced,y=salary1,col="blue"),col="red")
