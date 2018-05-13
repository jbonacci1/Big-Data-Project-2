#Reading in original data 
training1<- read.csv(file="/Users/jackbonacci/Desktop/training.csv")
testing1<- read.csv(file="/Users/jackbonacci/Desktop/testing.csv")

#Exploratory analysis on training1 data
head(training1)
sapply(training1,function(x) sum(is.na(x)))

#Trimming training1
training2<- training1[c(1:17,20,23,26,37:49,60:74,84:92,95,98,101,102,113:130,133,136,139,140,151:160)]

#Exploratory analysis on training2
sapply(training2,function(x) sum(is.na(x)))

#Trimming training2
training3<- training2[c(1:11,21:42,49:51,61:73,83:93)]

#Getting rid of timestamp varaibles
training4<- training3[c(1:2, 6:60)]

#Applying same logic from trimming training1 in order to trim testing1
testing2<- testing1[c(1:17,20,23,26,37:49,60:74,84:92,95,98,101,102,113:130,133,136,139,140,151:160)]
testing3<- testing2[c(1:11,21:42,49:51,61:73,83:93)]
testing4<- testing3[c(1:2, 6:60)]

#Saving cleaned datasets with new names
train<- training4
test<- testing4

#Removing old datasets
remove(testing1, testing2, testing3, testing4,  training1, training2, training3, training4)



