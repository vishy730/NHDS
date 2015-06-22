#This code is used to convert fixed width file to csv format
#getting the data to nhds variable
nhds<-read.fwf("F:/My-classes/datasets/nhds07_puf.txt", widths = c(2,1,1,2,1,1,1,2,1,4,1,1,1,1,5,2,5,5,5,5,5,5,5,4,4,4,4,2,2,3,1,2))
#checking the data
head(nhds)
#converting it to data frame for easier handling of data
nhdsdf<-as.data.frame(nhds)
#assigning column names
colnames(nhdsdf)<-c("Year","NewBorn","UnitsofAge","Age","Sex","Race","MaritalStatus","DischargeMonth","DischargeStatus","DaysofCare","LengthofStay"," GeoLocation","Numofbeds","HospitalType","Weight","SurveyYear","Diagnosis Code 1","Diagnosis Code 2","Diagnosis Code 3","Diagnosis Code 4","Diagnosis Code 5","Diagnosis Code 6","Diagnosis Code 7","Procedure Code 1","Procedure Code 2","Procedure Code 3","Procedure Code 4","ModeofPayment"," secondpayment","DRG","Admissiontype","SourceofAdmission")
head(nhdsdf)
#writing the data to csv file
write.csv(nhdsdf,file="nhdsdata07.csv",append=TRUE)
