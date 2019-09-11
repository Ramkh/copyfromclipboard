a<-read.table(file = "clipboard", sep = "\t", header=TRUE)
a
attach(a)
str(a)
library(plyr)
library(plyr)
library(ggplot2)
library(Rmisc)
library(grid)
library(ggplot2)
library(ggExtra)
library(grid)
library(reshape2)
weed <- summarySE(a, measurevar= ("sev"), groupvars=c("days", "treat"), na.rm = FALSE, conf.interval = 0.95, .drop = TRUE)
weed
a<-ggplot(data=weed, aes(x=days, y=sev, group = treat)) +
  geom_line() + geom_point() +geom_line(aes(color=treat))+ geom_point(aes(shape=treat, color=treat))
b<-a+theme(text = element_text(size=20))+labs(title="",x="Days after inoculation", y = "Severity (%)")
b                                                                                           















audpc(evaluation = sev, dates = days, type = "relative")

