
h_data= read.csv("heart.csv" , sep = " ")
h_data[1:5,]
names(h_data)=c("age", "sex", "cp", "trestbps", "chol")
h_data[1:6,1:5]
h_men_tst_120 <- subset(h_data, trestbps >120 & sex==0)
h_women_tst_120<- subset(h_data,trestbps>120 & sex==1)
dim(h_women_tst_120)

mean_h_women_tst_120<- mean(h_women_tst_120$trestbps)
mean_h_women_tst_120
mean_h_men_tst_120<- mean(h_men_tst_120$trestbps)
mean_h_men_tst_120

pdf("res.pdf")
boxplot(trestbps~age,h_data, col= c("red", "green"),xlab = "t", ylab = "y")
dev.off()
