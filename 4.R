


heart_data <- read.csv(file = 'heart.csv', header=FALSE, sep=" ")
# "age", "sex", "cp", "trestbps”, “chol"

names(heart_data) <- c("age", "sex", "cp", "trestbps", "chol")
# data2 <- filter(heart_data['sex']==1, heart_data['trestbps']>120) 
# heart_data$sex[heart_data$sex == 1]
heart_data.men<- subset(heart_data,sex==0 & trestbps>120 )
dim(heart_data.men) # dim 58 14
heart_data.women<- subset(heart_data,sex==1 & trestbps>120 )
dim(heart_data.women) #dim 121  14
dim(heart_data)# dim 270  14

############################################################
# Find the average age of women and men who have blood pressure above 120 separately.
women_mean_age_bp120<- mean(heart_data.women$age) #54.93388
men_mean_age_bp120<- mean(heart_data.men$age) #57

###################### boxplot #############################
# Draw a boxplot of blood pressure based on gender and save it in a PDF file.
# trestbps_men<- subset(heart_data,trestbps & sex==0)
# trestbps_women<- subset(heart_data,trestbps & sex==1)
# boxplot(trestbps_men$trestbps, )
# boxplot(trestbps_women$trestbps)
pdf("boxplot.pdf")
boxplot(trestbps~sex,heart_data, col = c("darkorange","cyan"), xlab = "Gender",
        ylab = "blood pressure", main = "Relationship between blood pressure and gender")
dev.off()

