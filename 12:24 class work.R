library(tidyverse)
#1
tips <- read.csv("/Users/liaopincheng/Downloads/tips.csv")
ggplot(data =tips)+
  geom_point(mapping = aes(x=n_peop,y=tip))
ggplot(data= tips)+
  geom_smooth(mapping =aes(x=n_peop, y=tip))
#2
cor(tips$n_peop,tips$tip)
#3
fit1224 <- lm(tips$tip~tips$n_peop) #y first and put x back
fit1224
#4
summary(fit1224)
#yes the data provide strong evidence that more people in group is associated with more tips
#5
residuals(fit1224)
ggplot()+
  geom_point(mapping= aes(x=tips$n_peop, y=fit1224$residuals))
#6
ggplot()+
  geom_point(mapping = aes(x=tips$n_peop,y=tips$tip))+
  geom_smooth(mapping = aes(x=tips$n_peop,y=fit1224$fitted.values))
#7
 fit1224$coefficients[[2]]*12+fit1224$coefficients[[1]]



