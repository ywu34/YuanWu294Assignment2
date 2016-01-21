##Problem 0##
YuanWuAssignment2<-list(
  firstname="Yuan",
  lastname="Wu",
  email="ywu34@ucsc.edu",
  StudenID=1307193
)
##Problem 1##
library(foreign)
load(url("https://github.com/EconomiCurtis/econ294_2015/raw/master/data/diamonds.RData"))
YuanWuAssignment2$s1a<-nrow(diamonds)
YuanWuAssignment2$s1b<-ncol(diamonds)
YuanWuAssignment2$s1c<-colnames(diamonds)
YuanWuAssignment2$s1d<-summary(diamonds$price)
##Problem 2##
NHIS<-read.table("https://github.com/EconomiCurtis/econ294_2015/raw/master/data/NHIS_2007_TSV.txt",sep="\t", header=TRUE)
YuanWuAssignment2$s2a<-nrow(NHIS)
YuanWuAssignment2$s2b<-ncol(NHIS)
YuanWuAssignment2$s2c<-colnames(NHIS)
YuanWuAssignment2$s2d<-mean(NHIS$weight)
YuanWuAssignment2$s2e<-median(NHIS$weight)
hist(NHIS$weight)
table(NHIS$weight)
NHIS$weightadj<-ifelse(NHIS$weight>=996&NHIS$weight<=999,NA,NHIS$weight)
YuanWuAssignment2$s2f<-mean(NHIS$weightadj,na.rm=TRUE)
YuanWuAssignment2$s2g<-median(NHIS$weightadj,na.rm=TRUE)
YuanWuAssignment2$s2h<-summary(NHIS$weight,NHIS$SEX==2)
YuanWuAssignment2$s2i<-summary(NHIS$weight,NHIS$SEX==1)
##Problem 3##
vec<-c(letters,LETTERS)
YuanWuAssignment2$s3a<-vec[seq(2,52,2)]
YuanWuAssignment2$s3b<-paste(vec[c(51,21,1)],collapse="")
arr<-array(c(letters,LETTERS),dim=c(3,3,3))
YuanWuAssignment2$s3c<-arr[1:3,1,2]
YuanWuAssignment2$s3d<-arr[2,2,1:3]
YuanWuAssignment2$s3e<-paste(arr[1,3,3],arr[3,1,3],arr[1,1,1],sep="")
##Problem 4##
library(foreign)
alan<- read.dta("https://github.com/EconomiCurtis/econ294_2015/raw/master/data/org_example.dta")
sort(unique(alan$year))
sort(unique(alan$month))
sort(unique(alan$educ))
YuanWuAssignment2$s4<-aggregate(alan$rw,list(year=alan$year,month=alan$month,educ=alan$educ),mean,na.rm=TRUE)