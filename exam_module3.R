library(HistData)
library(ggplot2)
data(Arbuthnot)

df<-Arbuthnot
df2<-read.csv("present.csv")

Total<-data.frame(df2$boys+df2$girls)
colnames(Total)[1]<-"Total"
df2[4]<-Total
df2$prop_boys<-df2$boys/df2$Total
df2$prop_girls<-df2$girls/df2$Total
# plot(df2$year,df2$prop_boys)
df2$more_boys<-ifelse(df2$boys>df2$girls, "TRUE", ifelse(df2$boys<df2$girls, "FALSE", "None"))
df2$prop_boys_girls<-df2$boys/df2$girls
plot(df2$year,df2$prop_boys_girls)
high<-max(df2$Total)
# ave<-mean(df2$Total)
years<-subset(df2, Total == high)
# years<-subset(df2, Total %in% ave)
