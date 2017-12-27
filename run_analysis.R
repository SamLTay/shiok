# Peers review assignment Wk 4 Data Cleaning
# ver 4

setwd("/Users/Sam/data/Peers Review assignment")
home<-"/Users/Sam/data/Peers Review assignment"
features<-read.table("./features.txt")
setwd("./test/Inertial Signals")

#for all test raw measurements
#renaming the sample names to S1:S128 and add a serial number column "id"
#--------------------------------

body_acc_x_test<-read.table("./body_acc_x_test.txt")
names(body_acc_x_test)<-(gsub("V","S",names(body_acc_x_test)))
body_acc_x_test<-read.table("./body_acc_x_test.txt")

#create master folders sensors_mean and sensors_std for STD and mean respectively
#
#---------
      sensors_mean_test<-select(body_acc_x_test,-(V1:V128))
      sensors_mean_test<-mutate(sensors_mean_test,id=seq(from=1,by=1,along.with=body_acc_x_test$V1))
      sensors_std_test<-sensors_mean_test
#--------
# calculate Mean and Standard Deviation of 128 measurements for measurement
#      body_acc_x_test
#   clean up its original data table with test index "id" included      
      
names(body_acc_x_test)<-(gsub("V","S",names(body_acc_x_test)))

body_acc_x_test<-mutate(body_acc_x_test,std=seq(from=9999,to=9999,along.with=body_acc_x_test$S1))
body_acc_x_test<-mutate(body_acc_x_test,meanx=seq(from=9999,to=9999,along.with=body_acc_x_test$S1))
c<-ncol(body_acc_x_test)-2
for (m in 1:nrow(body_acc_x_test))

{ x<-as.numeric(body_acc_x_test[m,1:c])
body_acc_x_test$std[m]<-sd(x)
body_acc_x_test$meanx[m]<-mean(x)}

#-----------------
      sensors_std_test$body_acc_x_std<-body_acc_x_test$std
      sensors_mean_test$body_acc_x_mean<-body_acc_x_test$meanx
#-------------

body_acc_x_test<-mutate(body_acc_x_test,id=seq(from=1,by=1,along.with=body_acc_x_test$S1))
body_acc_x_test_comp<-select(body_acc_x_test,-(S1:S128))

setwd(home)
write.table(body_acc_x_test,"./body_acc_x_test_index",row.names = FALSE)
setwd("./test/Inertial Signals")
#----------------------------------
# calculate Mean and Standard Deviation of 128 measurements for measurement
#      body_acc_y_test
#   clean up its original data table with test index "id" included

body_acc_y_test<-read.table("./body_acc_y_test.txt")
names(body_acc_y_test)<-(gsub("V","S",names(body_acc_y_test)))
body_acc_y_test<-read.table("./body_acc_y_test.txt")
names(body_acc_y_test)<-(gsub("V","S",names(body_acc_y_test)))

body_acc_y_test<-mutate(body_acc_y_test,std=seq(from=9999,to=9999,along.with=body_acc_y_test$S1))
body_acc_y_test<-mutate(body_acc_y_test,meanx=seq(from=9999,to=9999,along.with=body_acc_y_test$S1))
c<-ncol(body_acc_y_test)-2
for (m in 1:nrow(body_acc_y_test))
{ x<-as.numeric(body_acc_y_test[m,1:c])
body_acc_y_test$std[m]<-sd(x)
body_acc_y_test$meanx[m]<-mean(x)}

#-----------------
sensors_std_test$body_acc_y_std<-body_acc_y_test$std
sensors_mean_test$body_acc_y_mean<-body_acc_y_test$meanx
#-------------

body_acc_y_test<-mutate(body_acc_y_test,id=seq(from=1,by=1,along.with=body_acc_y_test$S1))
body_acc_y_test_comp<-select(body_acc_y_test,-(S1:S128))

setwd(home)
write.table(body_acc_y_test,"./body_acc_y_test_index",row.names = FALSE)
setwd("./test/Inertial Signals")

#
#--------------------------------
# calculate Mean and Standard Deviation of 128 measurements for measurement
#      body_acc_z_test
#   clean up its original data table with test index "id" included

body_acc_z_test<-read.table("./body_acc_z_test.txt")
names(body_acc_z_test)<-(gsub("V","S",names(body_acc_z_test)))
body_acc_z_test<-read.table("./body_acc_z_test.txt")
names(body_acc_z_test)<-(gsub("V","S",names(body_acc_z_test)))

body_acc_z_test<-mutate(body_acc_z_test,std=seq(from=9999,to=9999,along.with=body_acc_z_test$S1))
body_acc_z_test<-mutate(body_acc_z_test,meanx=seq(from=9999,to=9999,along.with=body_acc_z_test$S1))
c<-ncol(body_acc_z_test)-2
for (m in 1:nrow(body_acc_z_test))
{ x<-as.numeric(body_acc_z_test[m,1:c])
body_acc_z_test$std[m]<-sd(x)
body_acc_z_test$meanx[m]<-mean(x)}

#-----------------
sensors_std_test$body_acc_z_std<-body_acc_z_test$std
sensors_mean_test$body_acc_z_mean<-body_acc_z_test$meanx
#-------------

body_acc_z_test<-mutate(body_acc_z_test,id=seq(from=1,by=1,along.with=body_acc_z_test$S1))
body_acc_z_test_comp<-select(body_acc_z_test,-(S1:S128))

setwd(home)
write.table(body_acc_z_test,"./body_acc_z_test_index",row.names = FALSE)
setwd("./test/Inertial Signals")
#
#--------------------------------
# calculate Mean and Standard Deviation of 128 measurements for measurement
#      body_gyro_x_test
#   clean up its original data table with test index "id" included

body_gyro_x_test<-read.table("./body_gyro_x_test.txt")
names(body_gyro_x_test)<-(gsub("V","S",names(body_gyro_x_test)))
body_gyro_x_test<-read.table("./body_gyro_x_test.txt")
names(body_gyro_x_test)<-(gsub("V","S",names(body_gyro_x_test)))

body_gyro_x_test<-mutate(body_gyro_x_test,std=seq(from=9999,to=9999,along.with=body_gyro_x_test$S1))
body_gyro_x_test<-mutate(body_gyro_x_test,meanx=seq(from=9999,to=9999,along.with=body_gyro_x_test$S1))
c<-ncol(body_gyro_x_test)-2
for (m in 1:nrow(body_gyro_x_test))
{ x<-as.numeric(body_gyro_x_test[m,1:c])
body_gyro_x_test$std[m]<-sd(x)
body_gyro_x_test$meanx[m]<-mean(x)}

#-----------------
      sensors_std_test$body_gyro_x_std<-body_gyro_x_test$std
      sensors_mean_test$body_gyro_x_mean<-body_gyro_x_test$meanx
#-------------

body_gyro_x_test<-mutate(body_gyro_x_test,id=seq(from=1,by=1,along.with=body_gyro_x_test$S1))
body_gyro_x_test_comp<-select(body_gyro_x_test,-(S1:S128))

setwd(home)
write.table(body_gyro_x_test,"./body_gyro_x_test_index",row.names = FALSE)
setwd("./test/Inertial Signals")

#--------------------------------
# calculate Mean and Standard Deviation of 128 measurements for measurement
#      body_gyro_y_test
#   clean up its original data table with test index "id" included
body_gyro_y_test<-read.table("./body_gyro_y_test.txt")
names(body_gyro_y_test)<-(gsub("V","S",names(body_gyro_y_test)))
body_gyro_y_test<-read.table("./body_gyro_y_test.txt")
names(body_gyro_y_test)<-(gsub("V","S",names(body_gyro_y_test)))

body_gyro_y_test<-mutate(body_gyro_y_test,std=seq(from=9999,to=9999,along.with=body_gyro_y_test$S1))
body_gyro_y_test<-mutate(body_gyro_y_test,meanx=seq(from=9999,to=9999,along.with=body_gyro_y_test$S1))
c<-ncol(body_gyro_y_test)-2
for (m in 1:nrow(body_gyro_y_test))
{ x<-as.numeric(body_gyro_y_test[m,1:c])
body_gyro_y_test$std[m]<-sd(x)
body_gyro_y_test$meanx[m]<-mean(x)}

#-----------------
sensors_std_test$body_gyro_y_std<-body_gyro_y_test$std
sensors_mean_test$body_gyro_y_mean<-body_gyro_y_test$meanx
#-------------
body_gyro_y_test<-mutate(body_gyro_y_test,id=seq(from=1,by=1,along.with=body_gyro_y_test$S1))
body_gyro_y_test_comp<-select(body_gyro_y_test,-(S1:S128))

setwd(home)
write.table(body_gyro_y_test,"./body_gyro_y_test_index",row.names = FALSE)
setwd("./test/Inertial Signals")


#--------------------------------
# calculate Mean and Standard Deviation of 128 measurements for measurement
#      body_gyro_z_test
#   clean up its original data table with test index "id" included

body_gyro_z_test<-read.table("./body_gyro_z_test.txt")
names(body_gyro_z_test)<-(gsub("V","S",names(body_gyro_z_test)))
body_gyro_z_test<-read.table("./body_gyro_z_test.txt")
names(body_gyro_z_test)<-(gsub("V","S",names(body_gyro_z_test)))

body_gyro_z_test<-mutate(body_gyro_z_test,std=seq(from=9999,to=9999,along.with=body_gyro_z_test$S1))
body_gyro_z_test<-mutate(body_gyro_z_test,meanx=seq(from=9999,to=9999,along.with=body_gyro_z_test$S1))
c<-ncol(body_gyro_z_test)-2
for (m in 1:nrow(body_gyro_z_test))
{ x<-as.numeric(body_gyro_z_test[m,1:c])
body_gyro_z_test$std[m]<-sd(x)
body_gyro_z_test$meanx[m]<-mean(x)}
#-----------------
sensors_std_test$body_gyro_z_std<-body_gyro_z_test$std
sensors_mean_test$body_gyro_z_mean<-body_gyro_z_test$meanx

body_gyro_z_test<-mutate(body_gyro_z_test,id=seq(from=1,by=1,along.with=body_gyro_z_test$S1))
body_gyro_z_test_comp<-select(body_gyro_z_test,-(S1:S128))
setwd(home)
write.table(body_gyro_z_test,"./body_gyro_z_test_index",row.names = FALSE)
setwd("./test/Inertial Signals")

#--------------------------------
# calculate Mean and Standard Deviation of 128 measurements for measurement
#      total_acc_x_test
#   clean up its original data table with test index "id" included

total_acc_x_test<-read.table("./total_acc_x_test.txt")
names(total_acc_x_test)<-(gsub("V","S",names(total_acc_x_test)))

total_acc_x_test<-mutate(total_acc_x_test,std=seq(from=9999,to=9999,along.with=total_acc_x_test$S1))
total_acc_x_test<-mutate(total_acc_x_test,meanx=seq(from=9999,to=9999,along.with=total_acc_x_test$S1))
c<-ncol(total_acc_x_test)-2
for (m in 1:nrow(total_acc_x_test))
{ x<-as.numeric(total_acc_x_test[m,1:c])
total_acc_x_test$std[m]<-sd(x)
total_acc_x_test$meanx[m]<-mean(x)}

#-----------------
sensors_std_test$total_acc_x_std<-total_acc_x_test$std
sensors_mean_test$total_acc_x_mean<-total_acc_x_test$meanx
#-------------

total_acc_x_test<-mutate(total_acc_x_test,id=seq(from=1,by=1,along.with=total_acc_x_test$S1))
total_acc_x_test_comp<-select(total_acc_x_test,-(S1:S128))

setwd(home)
write.table(total_acc_x_test,"./total_acc_x_test_index",row.names = FALSE)
setwd("./test/Inertial Signals")

#--------------------------------
# calculate Mean and Standard Deviation of 128 measurements for measurement
#      total_acc_y_test
#   clean up its original data table with test index "id" included
# 
total_acc_y_test<-read.table("./total_acc_y_test.txt")
names(total_acc_y_test)<-(gsub("V","S",names(total_acc_y_test)))

total_acc_y_test<-read.table("./total_acc_y_test.txt")
names(total_acc_y_test)<-(gsub("V","S",names(total_acc_y_test)))

total_acc_y_test<-mutate(total_acc_y_test,std=seq(from=9999,to=9999,along.with=total_acc_y_test$S1))
total_acc_y_test<-mutate(total_acc_y_test,meanx=seq(from=9999,to=9999,along.with=total_acc_y_test$S1))
c<-ncol(total_acc_y_test)-2
for (m in 1:nrow(total_acc_y_test))
{ x<-as.numeric(total_acc_y_test[m,1:c])
total_acc_y_test$std[m]<-sd(x)
total_acc_y_test$meanx[m]<-mean(x)}

#-----------------
sensors_std_test$total_acc_y_std<-total_acc_y_test$std
sensors_mean_test$total_acc_y_mean<-total_acc_y_test$meanx
#-------------

total_acc_y_test<-mutate(total_acc_y_test,id=seq(from=1,by=1,along.with=total_acc_y_test$S1))
total_acc_y_test_comp<-select(total_acc_y_test,-(S1:S128))

setwd(home)
write.table(total_acc_y_test,"./total_acc_y_test_index",row.names = FALSE)
setwd("./test/Inertial Signals")

#--------------------------------
# calculate Mean and Standard Deviation of 128 measurements for measurement
#      total_acc_z_test
#   clean up its original data table with test index "id" included
# 
total_acc_z_test<-read.table("./total_acc_z_test.txt")
names(total_acc_z_test)<-(gsub("V","S",names(total_acc_z_test)))

total_acc_z_test<-read.table("./total_acc_z_test.txt")
names(total_acc_z_test)<-(gsub("V","S",names(total_acc_z_test)))

total_acc_z_test<-mutate(total_acc_z_test,std=seq(from=9999,to=9999,along.with=total_acc_z_test$S1))
total_acc_z_test<-mutate(total_acc_z_test,meanx=seq(from=9999,to=9999,along.with=total_acc_z_test$S1))
c<-ncol(total_acc_z_test)-2
for (m in 1:nrow(total_acc_z_test))
{ x<-as.numeric(total_acc_z_test[m,1:c])
total_acc_z_test$std[m]<-sd(x)
total_acc_z_test$meanx[m]<-mean(x)}
#-----------------
sensors_std_test$total_acc_z_std<-total_acc_z_test$std
sensors_mean_test$total_acc_z_mean<-total_acc_z_test$meanx
#-------------
total_acc_z_test<-mutate(total_acc_z_test,id=seq(from=1,by=1,along.with=total_acc_z_test$S1))
total_acc_z_test_comp<-select(total_acc_z_test,-(S1:S128))

setwd(home)
write.table(total_acc_z_test,"./total_acc_z_test_index",row.names = FALSE)
setwd("./test/Inertial Signals")

#  for all train raw measurements
# renaming the sample names to S1:S128 and add a serial number column "id"
setwd("/Users/Sam/data/Peers Review assignment")
setwd("./train/Inertial Signals")

#--------------------------------
# calculate Mean and Standard Deviation of 128 measurements for measurement
#      body_acc_x_train
#   clean up its original data table with test index "id" included
# 
body_acc_x_train<-read.table("./body_acc_x_train.txt")
#create and master folders sensors_mean and sensors_std for STD and mean respectively
#---------
sensors_mean_train<-select(body_acc_x_train,-(V1:V128))
sensors_mean_train<-mutate(sensors_mean_train,id=seq(from=10001,by=1,along.with=body_acc_x_train$V1))
sensors_std_train<-sensors_mean_train
#--------
names(body_acc_x_train)<-(gsub("V","S",names(body_acc_x_train)))


body_acc_x_train<-mutate(body_acc_x_train,std=seq(from=9999,to=9999,along.with=body_acc_x_train$S1))
body_acc_x_train<-mutate(body_acc_x_train,meanx=seq(from=9999,to=9999,along.with=body_acc_x_train$S1))
c<-ncol(body_acc_x_train)-2
for (m in 1:nrow(body_acc_x_train))
{ x<-as.numeric(body_acc_x_train[m,1:c])
  body_acc_x_train$std[m]<-sd(x)
body_acc_x_train$meanx[m]<-mean(x)}
#-----------------
sensors_std_train$body_acc_x_std<-body_acc_x_train$std
sensors_mean_train$body_acc_x_mean<-body_acc_x_train$meanx
#-------------
body_acc_x_train<-mutate(body_acc_x_train,id=seq(from=10001,by=1,along.with=body_acc_x_train$S1))
body_acc_x_train_comp<-select(body_acc_x_train,-(S1:S128))

setwd(home)
write.table(body_acc_x_train,"./body_acc_x_train_index",row.names = FALSE)
setwd("./train/Inertial Signals")

#--------------------------------
# calculate Mean and Standard Deviation of 128 measurements for measurement
#      body_acc_y_train
#   clean up its original data table with test index "id" included
# 
body_acc_y_train<-read.table("./body_acc_y_train.txt")
names(body_acc_y_train)<-(gsub("V","S",names(body_acc_y_train)))

body_acc_y_train<-mutate(body_acc_y_train,std=seq(from=9999,to=9999,along.with=body_acc_y_train$S1))
body_acc_y_train<-mutate(body_acc_y_train,meanx=seq(from=9999,to=9999,along.with=body_acc_y_train$S1))
c<-ncol(body_acc_y_train)-2
for (m in 1:nrow(body_acc_y_train))
{ x<-as.numeric(body_acc_y_train[m,1:c])
body_acc_y_train$std[m]<-sd(x)
body_acc_y_train$meanx[m]<-mean(x)}
#-----------------
sensors_std_train$body_acc_y_std<-body_acc_y_train$std
sensors_mean_train$body_acc_y_mean<-body_acc_y_train$meanx
#-------------
body_acc_y_train<-mutate(body_acc_y_train,id=seq(from=10001,by=1,along.with=body_acc_y_train$S1))
body_acc_y_train_comp<-select(body_acc_y_train,-(S1:S128))

setwd(home)
write.table(body_acc_y_train,"./body_acc_y_train_index",row.names = FALSE)
setwd("./train/Inertial Signals")

#--------------------------------
# calculate Mean and Standard Deviation of 128 measurements for measurement
#      body_acc_z_train
#   clean up its original data table with test index "id" included
# 
body_acc_z_train<-read.table("./body_acc_z_train.txt")
names(body_acc_z_train)<-(gsub("V","S",names(body_acc_z_train)))

body_acc_z_train<-mutate(body_acc_z_train,std=seq(from=9999,to=9999,along.with=body_acc_z_train$S1))
body_acc_z_train<-mutate(body_acc_z_train,meanx=seq(from=9999,to=9999,along.with=body_acc_z_train$S1))
c<-ncol(body_acc_z_train)-2
for (m in 1:nrow(body_acc_z_train))
{ x<-as.numeric(body_acc_z_train[m,1:c])
body_acc_z_train$std[m]<-sd(x)
body_acc_z_train$meanx[m]<-mean(x)}
#-----------------
sensors_std_train$body_acc_z_std<-body_acc_z_train$std
sensors_mean_train$body_acc_z_mean<-body_acc_z_train$meanx
#-------------
body_acc_z_train<-mutate(body_acc_z_train,id=seq(from=10001,by=1,along.with=body_acc_z_train$S1))
body_acc_z_train_comp<-select(body_acc_z_train,-(S1:S128))

setwd(home)
write.table(body_acc_z_train,"./body_acc_z_train_index",row.names = FALSE)
setwd("./train/Inertial Signals")

#_________________
body_gyro_x_train<-read.table("./body_gyro_x_train.txt")
names(body_gyro_x_train)<-(gsub("V","S",names(body_gyro_x_train)))

body_gyro_x_train<-mutate(body_gyro_x_train,std=seq(from=9999,to=9999,along.with=body_gyro_x_train$S1))
body_gyro_x_train<-mutate(body_gyro_x_train,meanx=seq(from=9999,to=9999,along.with=body_gyro_x_train$S1))
c<-ncol(body_gyro_x_train)-2
for (m in 1:nrow(body_gyro_x_train))
{ x<-as.numeric(body_gyro_x_train[m,1:c])
body_gyro_x_train$std[m]<-sd(x)
body_gyro_x_train$meanx[m]<-mean(x)}
#-----------------
sensors_std_train$body_gyro_x_std<-body_gyro_x_train$std
sensors_mean_train$body_gyro_x_mean<-body_gyro_x_train$meanx
#--------------------------------
# calculate Mean and Standard Deviation of 128 measurements for measurement
#      body_gyro_x_train
#   clean up its original data table with test index "id" included
# 

body_gyro_x_train<-mutate(body_gyro_x_train,id=seq(from=10001,by=1,along.with=body_gyro_x_train$S1))
body_gyro_x_train_comp<-select(body_gyro_x_train,-(S1:S128))

setwd(home)
write.table(body_gyro_x_train,"./body_gyro_x_train_index",row.names = FALSE)
setwd("./train/Inertial Signals")
#--------------------------------
# calculate Mean and Standard Deviation of 128 measurements for measurement
#      body_gyro_y_train
#   clean up its original data table with test index "id" included
# 

body_gyro_y_train<-read.table("./body_gyro_y_train.txt")
names(body_gyro_y_train)<-(gsub("V","S",names(body_gyro_y_train)))

body_gyro_y_train<-mutate(body_gyro_y_train,std=seq(from=9999,to=9999,along.with=body_gyro_y_train$S1))
body_gyro_y_train<-mutate(body_gyro_y_train,meanx=seq(from=9999,to=9999,along.with=body_gyro_y_train$S1))
c<-ncol(body_gyro_y_train)-2
for (m in 1:nrow(body_gyro_y_train))
{ x<-as.numeric(body_gyro_y_train[m,1:c])
body_gyro_y_train$std[m]<-sd(x)
body_gyro_y_train$meanx[m]<-mean(x)}
#-----------------
sensors_std_train$body_gyro_y_std<-body_gyro_y_train$std
sensors_mean_train$body_gyro_y_mean<-body_gyro_y_train$meanx
#-------------
body_gyro_y_train<-mutate(body_gyro_y_train,id=seq(from=10001,by=1,along.with=body_gyro_y_train$S1))
body_gyro_y_train_comp<-select(body_gyro_y_train,-(S1:S128))

setwd(home)
write.table(body_gyro_y_train,"./body_gyro_y_train_index",row.names = FALSE)
setwd("./train/Inertial Signals")

#--------------------------------
# calculate Mean and Standard Deviation of 128 measurements for measurement
#      body_gyro_z_train
#   clean up its original data table with test index "id" included
# 
body_gyro_z_train<-read.table("./body_gyro_z_train.txt")
names(body_gyro_z_train)<-(gsub("V","S",names(body_gyro_z_train)))
body_gyro_z_train<-mutate(body_gyro_z_train,std=seq(from=9999,to=9999,along.with=body_gyro_z_train$S1))
body_gyro_z_train<-mutate(body_gyro_z_train,meanx=seq(from=9999,to=9999,along.with=body_gyro_z_train$S1))
c<-ncol(body_gyro_z_train)-2
for (m in 1:nrow(body_gyro_z_train))
{ x<-as.numeric(body_gyro_z_train[m,1:c])
body_gyro_z_train$std[m]<-sd(x)
body_gyro_z_train$meanx[m]<-mean(x)}
#-----------------
sensors_std_train$body_gyro_z_std<-body_gyro_z_train$std
sensors_mean_train$body_gyro_z_mean<-body_gyro_z_train$meanx
#-------------
body_gyro_z_train<-mutate(body_gyro_z_train,id=seq(from=10001,by=1,along.with=body_gyro_z_train$S1))
body_gyro_z_train_comp<-select(body_gyro_z_train,-(S1:S128))

setwd(home)
write.table(body_gyro_z_train,"./body_gyro_z_train_index",row.names = FALSE)
setwd("./train/Inertial Signals")

#--------------------------------
# calculate Mean and Standard Deviation of 128 measurements for measurement
#      total_acc_x_train
#   clean up its original data table with test index "id" included
# 

total_acc_x_train<-read.table("./total_acc_x_train.txt")
names(total_acc_x_train)<-(gsub("V","S",names(total_acc_x_train)))
total_acc_x_train<-mutate(total_acc_x_train,std=seq(from=9999,to=9999,along.with=total_acc_x_train$S1))
total_acc_x_train<-mutate(total_acc_x_train,meanx=seq(from=9999,to=9999,along.with=total_acc_x_train$S1))
c<-ncol(total_acc_x_train)-2
for (m in 1:nrow(total_acc_x_train))
{ x<-as.numeric(total_acc_x_train[m,1:c])
total_acc_x_train$std[m]<-sd(x)
total_acc_x_train$meanx[m]<-mean(x)}
#-----------------
sensors_std_train$total_acc_x_std<-total_acc_x_train$std
sensors_mean_train$total_acc_x_mean<-total_acc_x_train$meanx
#-------------
total_acc_x_train<-mutate(total_acc_x_train,id=seq(from=10001,by=1,along.with=total_acc_x_train$S1))
total_acc_x_train_comp<-select(total_acc_x_train,-(S1:S128))

setwd(home)
write.table(total_acc_x_train,"./total_acc_x_train_index",row.names = FALSE)
setwd("./train/Inertial Signals")

#--------------------------------
# calculate Mean and Standard Deviation of 128 measurements for measurement
#      total_acc_y_train
#   clean up its original data table with test index "id" included
# 
total_acc_y_train<-read.table("./total_acc_y_train.txt")
names(total_acc_y_train)<-(gsub("V","S",names(total_acc_y_train)))
total_acc_y_train<-mutate(total_acc_y_train,std=seq(from=9999,to=9999,along.with=total_acc_y_train$S1))
total_acc_y_train<-mutate(total_acc_y_train,meanx=seq(from=9999,to=9999,along.with=total_acc_y_train$S1))
c<-ncol(total_acc_y_train)-2
for (m in 1:nrow(total_acc_y_train))
{ x<-as.numeric(total_acc_y_train[m,1:c])
total_acc_y_train$std[m]<-sd(x)
total_acc_y_train$meanx[m]<-mean(x)}
#-----------------
sensors_std_train$total_acc_y_std<-total_acc_y_train$std
sensors_mean_train$total_acc_y_mean<-total_acc_y_train$meanx
#-------------
total_acc_y_train<-mutate(total_acc_y_train,id=seq(from=10001,by=1,along.with=total_acc_y_train$S1))
total_acc_y_train_comp<-select(total_acc_y_train,-(S1:S128))

setwd(home)
write.table(total_acc_y_train,"./total_acc_y_train_index",row.names = FALSE)
setwd("./train/Inertial Signals")
#--------------------------------
# calculate Mean and Standard Deviation of 128 measurements for measurement
#      total_acc_z_train
#   clean up its original data table with test index "id" included
# 

total_acc_z_train<-read.table("./total_acc_z_train.txt")
names(total_acc_z_train)<-(gsub("V","S",names(total_acc_z_train)))
total_acc_z_train<-mutate(total_acc_z_train,std=seq(from=9999,to=9999,along.with=total_acc_z_train$S1))
total_acc_z_train<-mutate(total_acc_z_train,meanx=seq(from=9999,to=9999,along.with=total_acc_z_train$S1))
c<-ncol(total_acc_z_train)-2
for (m in 1:nrow(total_acc_z_train))
{ x<-as.numeric(total_acc_z_train[m,1:c])
total_acc_z_train$std[m]<-sd(x)
total_acc_z_train$meanx[m]<-mean(x)}
#-----------------
sensors_std_train$total_acc_z_std<-total_acc_z_train$std
sensors_mean_train$total_acc_z_mean<-total_acc_z_train$meanx
#-------------
total_acc_z_train<-mutate(total_acc_z_train,id=seq(from=10001,by=1,along.with=total_acc_z_train$S1))
total_acc_z_train_comp<-select(total_acc_z_train,-(S1:S128))

setwd(home)
write.table(total_acc_z_train,"./total_acc_z_train_index",row.names = FALSE)

#_________________
#=======================================
#join the sensor_mean_test (2947 x 10) and sensor_mean_train (7352 x 10) datafile into one single sensor_mean datafile of length (10299x10)

mmts<-as.matrix(sensors_mean_test)
mmtr<-as.matrix(sensors_mean_train)
m<-rbind(mmts,mmtr)
sensors_mean<-as.data.frame(m)

#join the sensors_std_test (2947 x 10) and sensors_std_train (7352 x 10) datafile into one single sensors_std datafile of length (10299x10)

msts<-as.matrix(sensors_std_test)
mstr<-as.matrix(sensors_std_train)
m<-rbind(msts,mstr)
sensors_std<-as.data.frame(m)
# ======================================

# Naming of features, simplifies name by removing "(",")" and replaces them all with ""
# removing "-"and "," and replace both of them with "_"
# generate a lookup table with 561 names in file "feature_name_look_up_table" 
# for cross referencing of the old and new feature names

home<-"/Users/Sam/data/Peers Review assignment"
setwd(home)
features<-read.table("./features.txt")
f_old<-features

features$V2<-gsub("[()]","",features$V2)
features$V2<-gsub("[-]","_",features$V2)
features$V2<-gsub("[,]","_",features$V2)
featuresV2<-features$V2
names(features)<-c("V3","V4")
f_combine<-cbind(f_old,features)
feature_name_look_up_table<-select(f_combine,-V3)
names(feature_name_look_up_table)<-c("Feature_no","Original_feature_name","Simplified_feature_name")

setwd(home)
write.table(feature_name_look_up_table,"./feature_name_look_up_table",row.names = FALSE)

# Generate a file "activity_label" with names
# "activity_no" which is the identity number for the activity 
# "activities" which is the names for the activities

setwd(home)

#--------------------------------------
act_label<-read.table("./activity_labels.txt")
act_label<-tbl_df(act_label)
names(act_label)[1]<-"activity_no"
names(act_label)[2]<-"activities"
#----------------------------------------
#////////////////////////////

# %%%%%%%%%%%%
setwd(home)
write.table(act_label,"./activity_label",row.names = FALSE)
# %%%%%%%%%%%%
# Generate a file "activity&no_with_test_index" with names
# "id" which is the test identify number counting from 1 onwards for test data set identification...
# "activity.test" which is the identity number of the activity for the test (now cross-referenced to test identify number )
# "activities" which is the descriptive names for the activities carried out in the test

setwd("./test")

test_data<-read.table("./X_test.txt")
test_data<-mutate(test_data,id=seq(from=1,by=1,along.with=test_data$V1))
names(test_data)<-c(featuresV2,"id")
#%%%%%%%%%%%%
setwd(home)
s<-grep("std|Mean",featuresV2,value=TRUE)
#%%%%%%%%%%%%
setwd(home)
setwd("./test")
activity_test<-read.table("./y_test.txt")
names(activity_test)[1]<-"activity.test"
activity_test<-merge(activity_test,act_label,by.x="activity.test",by.y="activity_no")
activity_test<-mutate(activity_test,id=seq(from=1,by=1,along.with=activity_test$activity.test))
#%%%%%%%%%%%%
setwd(home)
write.table(activity_test,"activity&no_with_test_index",row.names = FALSE)
setwd("./test")
#%%%%%%%%%%%%

# Generate a file "subject_with_test_index" with names (total length 2947)
# "id" which is the test identify number counting from 1 onwards for test data set identification
# "subject.test" which is the number of the test subject (30 of them in total) for the test (now cross-referenced to test identify number )

subject_test<-read.table("./subject_test.txt")
names(subject_test)[1]<-"subject.test"
subject_test<-mutate(subject_test,id=seq(from=1,by=1,along.with=subject_test$subject.test))
#%%%%%%%%%%%%
setwd(home)
write.table(subject_test,"subject_with_test_index",row.names = FALSE)
setwd("./test")
#%%%%%%%%%%%%


merged_sub_act<-merge(activity_test,subject_test,by="id")
merged_test<-merge(merged_sub_act,test_data,by="id")
merged_test<-select(merged_test,id,activity.test,activities,subject.test,s)


merged_test<-rename(merged_test,activity_index=activity.test,subject_index=subject.test)

combineTest<-merge(merged_test,sensors_mean,by="id")
combineTest<-merge(combineTest,sensors_std,by="id")
#-------/////////////////////////////////////
# %%%%%%%%%%%%
# Generate a file "activity&no_with_train_index" with names
# "id" which is the train identify number counting from 10001 onwards for train data set identification
# "activity.train" which is the identity number of the activity for the train (now cross-referenced to train identify number )
# "activities" which is the descriptive names for the activities carried out in the training

setwd(home)
setwd("./train")

train_data<-read.table("./X_train.txt")
train_data<-mutate(train_data,id=seq(from=10001,by=1,along.with=train_data$V1))

names(train_data)<-c(featuresV2,"id")

#]]]]]]]]]]]]]]]]]]]]]]]]]]]]]]]]]]]]]]

activity_train<-read.table("./y_train.txt")
names(activity_train)[1]<-"activity.train"
activity_train<-merge(activity_train,act_label,by.x="activity.train",by.y="activity_no")
activity_train<-mutate(activity_train,id=seq(from=10001,by=1,along.with=activity_train$activity.train))

#%%%%%%%%%%%%
setwd(home)
write.table(activity_train,"activity&no_with_train_index",row.names = FALSE)
setwd("./train")
#%%%%%%%%%%%%

# Generate a file "subject_with_train_index" with names (total length 7352)
# "id" which is the train identify number counting from 10001 onwards for train data set identification
# "subject.train" which is the number of the train subject (30 of them in total) for the training (now cross-referenced to train identify number )

subject_train<-read.table("./subject_train.txt")
names(subject_train)[1]<-"subject.train"
subject_train<-mutate(subject_train,id=seq(from=10001,by=1,along.with=subject_train$subject.train))

#%%%%%%%%%%%%
setwd(home)
write.table(subject_train,"subject_with_train_index",row.names = FALSE)
setwd("./train")
#%%%%%%%%%%%%

# generate a file "sensors_mean&std_with_selected_features_info" with names
# id : combined test and train identification numbers
# with test id starting from 1 onwards and test id starting from 10001 onwards both 
# under the same variable "id" in the data file
# other names include "activity_index","activities" which is for ease of reading 
# as it can be obtained from "activity_index" in the lookup table
# "activity_index", and 58 variables consisting of the inertial sensors measurement (after 128 sample means)
# and selected feature variables that consists of "mean" and "std" in their descriptive names as 
# given by the instruction for the assignment

merged_sub_act<-merge(activity_train,subject_train,by="id")
merged_train<-merge(merged_sub_act,train_data,by="id")
# merged_train is zero
merged_train<-select(merged_train,id,activity.train,activities,subject.train, s)
combineTrain<-merge(merged_train,sensors_mean,by="id")
combineTrain<-merge(combineTrain,sensors_std,by="id")

# ]]]]]]]]]]]]]]]]]]]]]]]]]]]]]]]]]]]]]]]
# check that there is no NA in the data set


mts<-as.matrix(combineTest)
mtr<-as.matrix(combineTrain)

if (any(is.na(mts))==TRUE){
  print("there is NA in Test Data")
} else {
  print("there is no NA in Test Data")
}
if (any(is.na(mtr))==TRUE){
  print("there is NA in Train Data")
} else {
  print("there is no NA in Train Data")
}

# #
c<-rbind(mts,mtr)
merged_file<-as.data.frame(c)

setwd(home)
write.table(merged_file,"sensors_mean&std_with_selected_features_info",row.names = FALSE)
#+++++++++++++++

# ===========================
# Generate a file "summarized_measurement_average_activity&subject" that 
# summarizes with the average of each variable for each activity and each subject.
# there are total of 40 matches of activities and subject with their group average calculated

setwd(home)

write.table(test_data,"./feature_with_test_index",row.names = FALSE)
write.table(train_data,"./feature_with_train_index",row.names = FALSE)
setwd("./train")

subj<-unique(merged_file$subject_index)
act<-unique(merged_file$activities)
ii<-length(subj)
jj<-length(act)

ym<-NULL
ys<-ym

mf<-as.matrix(merged_file)

for (i in 1:ii){
  for (j in 1:jj )
  {
    y<-subset(mf,(mf[,4]==subj[i])&(mf[,3]==act[j]))
    # cm<-c(mf[,1])
    cm<-cbind(as.character(act[j]),subj[i])
    for (jk in 5:62){
      cm<-cbind(cm,mean(as.numeric(y[,jk])))
    }
    ym<-rbind(ym,cm)
  }
}


ym<-as.data.frame(ym)
ynames<-select(merged_file,-id,-activity_index)
names(ym)<-names(ynames)

ym<-filter(ym,total_acc_y_std!="NaN") 

ym<-unique(ym)
names(ym)<-paste0("ave_",names(ym))

setwd(home)
write.table(ym,"./summarized_measurement_average_activity&subject",row.names = FALSE)
