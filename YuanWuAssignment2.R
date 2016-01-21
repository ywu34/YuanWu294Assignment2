##Problem 0##
YuanWuAssignment2<-list(
  firstname="Yuan",
  lastname="Wu",
  email="ywu34@ucsc.edu",
  StudenID=1307193
)
#Creating the list.
##Problem 1##
library(foreign)
load(url("https://github.com/EconomiCurtis/econ294_2015/raw/master/data/diamonds.RData"))
YuanWuAssignment2$s1a<-nrow(diamonds)
print("There are 7 observations.")
YuanWuAssignment2$s1b<-ncol(diamonds)
print("There are 4 rows.")
YuanWuAssignment2$s1c<-colnames(diamonds)
print(YuanWuAssignment2$s1c)
#Print headers
YuanWuAssignment2$s1d<-summary(diamonds$price)
print(YuanWuAssignment2$s1d)
#Print summary of prices
##Problem 2##
NHIS<-read.table("https://github.com/EconomiCurtis/econ294_2015/raw/master/data/NHIS_2007_TSV.txt",sep="\t", header=TRUE)
YuanWuAssignment2$s2a<-nrow(NHIS)
print("There are 4785 observations.")
YuanWuAssignment2$s2b<-ncol(NHIS)
print("There are 9 columns.")
YuanWuAssignment2$s2c<-colnames(NHIS)
print(YuanWuAssignment2$s2c)
#Print headers
YuanWuAssignment2$s2d<-mean(NHIS$weight)
print("The mean weight is 266.")
YuanWuAssignment2$s2e<-median(NHIS$weight)
print("The median weight is 175.")
hist(NHIS$weight)
#Show histogram
table(NHIS$weight)
#Show table
NHIS$weightadj<-ifelse(NHIS$weight>=996&NHIS$weight<=999,NA,NHIS$weight)
#Creating a new column so that weight in between 996 and 999 are changed to NA's
YuanWuAssignment2$s2f<-mean(NHIS$weightadj,na.rm=TRUE)
print("The adjusted mean is 174.")
YuanWuAssignment2$s2g<-median(NHIS$weightadj,na.rm=TRUE)
print("The adjusted median is 170.")
YuanWuAssignment2$s2h<-summary(NHIS$weightadj,NHIS$SEX==2)
print(YuanWuAssignment2$s2h)
#Print summary for adjusted weight for weomen.
YuanWuAssignment2$s2i<-summary(NHIS$weightadj,NHIS$SEX==1)
print(YuanWuAssignment2$s2i)
#Print summary for adjusted weight for men
##Problem 3##
vec<-c(letters,LETTERS)
#Creating the vector.
YuanWuAssignment2$s3a<-vec[seq(2,52,2)]
print(YuanWuAssignment2$s3a)
#Print the even indexed characters.
YuanWuAssignment2$s3b<-paste(vec[c(51,21,1)],collapse="")
print(uanWuAssignment2$s3b)
#Print yua for Yuan
arr<-array(c(letters,LETTERS),dim=c(3,3,3))
#Creating the data frame.
YuanWuAssignment2$s3c<-arr[1:3,1,2]
print(YuanWuAssignment2$s3c)
#Print the second matrix's first column.
YuanWuAssignment2$s3d<-arr[2,2,1:3]
print(YuanWuAssignment2$s3d)
#Print the three middle vlaues from the three matrices.
YuanWuAssignment2$s3e<-paste(arr[1,3,3],arr[3,1,3],arr[1,1,1],sep="")
print(YuanWuAssignment2$s3e)
#Print yua for Yuan. Y No cap Y?

##Problem 4##
library(foreign)
alan<- read.dta("https://github.com/EconomiCurtis/econ294_2015/raw/master/data/org_example.dta")
sort(unique(alan$year))
sort(unique(alan$month))
sort(unique(alan$educ))
#Sorting data.
YuanWuAssignment2$s4<-aggregate(alan$rw,list(year=alan$year,month=alan$month,educ=alan$educ),mean,na.rm=TRUE)
print(YuanWuAssignment2$s4)
#Print the aggregated list with mean real wage for each year, month and education level.