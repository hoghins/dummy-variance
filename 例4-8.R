setwd("D:/Users/caiyue/Desktop")
c<-read.table("D:/Users/caiyue/Desktop/file14.csv",sep=",",header = T)
x<-ts(c$sales,start = c(1993,1),frequency = 12)
plot(x)

##确定性因素分解
#乘法模型，type="multriplication"
x.fit<-decompose(x,type="mult")
##查看季节指数，并绘制季节指数图
x.fit$figure
plot(x.fit$figure,type="o")
##查看趋势拟合值，并绘制趋势拟合图
x.fit$trend
plot(x.fit$trend)
##查看随机波动（残差）值，并绘制残差图
x.fit$random
plot(x.fit$random)

x.fit
plot(x.fit)
