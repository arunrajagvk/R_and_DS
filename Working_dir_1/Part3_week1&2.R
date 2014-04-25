fileUrl <- "https://data.baltimorecity.gov/api/views/dz54-2aru/rows.csv?accessType=DOWNLOAD"
download.file(fileUrl,destfile="/home/hduser/R_and_DS/camera.csv", method="curl")
list.files("/home/hduser/R_and_DS/")
dateDownloaded <- date()
dateDownloaded

cameraData <- read.table("/home/hduser/R_and_DS/camera.csv", sep="," , header= T)
head(cameraData)


if(!file.exists("../data")){
     dir.create("../data")
}
fileUrl <- "https://data.baltimorecity.gov/api/views/dz54-2aru/rows.xlsx?accessType=DOWNLOAD"
download.file(fileUrl, destfile="/home/hduser/R_and_DS/data/camera.xlsx", method="curl")
dateDownloaded<-date()

library(xlsx)
install.packages("xlsx")
cameraData <- read.xlsx("../data/camera.xlsx", sheetIndex=1, header=T)
cameraData <- read.xlsx("../data/camera.xlsx", sheetIndex=1, header=T, colIndex=1:3, rowIndex= 1:3)
head(cameraData)
cameraData

install.packages("XLConnect")
library("XLConnect")
install.packages("XML")
library(XML)

fileUrl <- "http://www.w3schools.com/xml/simple.xml"
doc <- xmlTreeParse(fileUrl, useInternal=T)
rootNode <- xmlRoot(doc)
xmlName(rootNode)
names(rootNode)
rootNode[[1]]
rootNode[[3]][[3]]
doc[[1]]
xmlSApply(rootNode,xmlValue)
xpathSApply(rootNode,"//name",xmlValue)

fileUrl <- "http://www.flipkart.com/watches/pr?p%5B%5D=facets.ideal_for%255B%255D%3DMen&p%5B%5D=sort%3Dpopularity&sid=r18&facetOrder%5B%5D=ideal_for&otracker=ch_vn_nav_catergorylinks_0_AllBrands"
doc <- htmlTreeParse(fileUrl, useInternal=T)
rootNode <- xmlRoot(doc)
names(rootNode)
rootNode [[1]][[7]]
xpathSApply(doc,"//li[@class='facet ' @title='Men']",xmlValue)
?xpathSApply

library(jsonlite)
jsonData <- fromJSON("https://api.github.com/users/jtleek/repos")
names(jsonData$owner$login)
jsonData$owner$login
data(iris)
data(Nile)
iris
myjson <- toJSON(iris, pretty= T)
cat(myjson)
iris2 <- fromJSON(myjson)
iris2

library(data.table)

install.packages("data.table")
DF <- data.frame(x=rnorm(9) , y=rep(c("a", "b", "c"),each=3), z=rnorm(9))
DT <- data.table(x=rnorm(9) , y=rep(c("a", "b", "c"),each=3), z=rnorm(9))
head(DF)

tables()
?some.tables()

DT[,list(y)]
DT[,table(y)]
?data.table

gas <- read.xlsx("../R_and_DS/data/gas.xlsx", sheetIndex=1, header=T)
list.files("/home/hduser/R_and_DS/data")
getwd()
setwd("/home/hduser/R_and_DS")
head(gas)
dat <- read.xlsx("../R_and_DS/data/gas.xlsx", sheetIndex=1, header=T,rowIndex=18:23,colIndex=7:15)
dat
sum(dat$Zip*dat$Ext,na.rm=T) 

library(XML)

fileURL <- "http://d396qusza40orc.cloudfront.net/getdata%2Fdata%2Frestaurants.xml"
doc <- htmlTreeParse(fileURL, useInternal=T)
rootNode <- xmlRoot(doc)
xmlName(rootNode)
names(rootNode)
rootNode[[1]]
rootNode[[3]][[3]]
doc[[1]]
xmlSApply(rootNode,xmlValue)
zipv <-xpathSApply(rootNode,"//zipcode",xmlValue)
sum(zipv==21231)



library(data.table)
fileURL <- "https://d396qusza40orc.cloudfront.net/getdata%2Fdata%2Fss06pid.csv "
download.file(fileURL,destfile="/home/hduser/R_and_DS/data/ASurvry.csv",method="curl")
fpath <- read.csv("/home/hduser/R_and_DS/data/ASurvry.csv", header =T)
NDT <- data.table(fpath)

DT<-fread("/home/hduser/R_and_DS/data/ASurvry.csv")
?fread


install.packages("RMySQL")
library("RMySQL")
library(RODBC)
m <-dbDriver("RODBC")

mylocal <- dbConnect(MySQL(),user="root", password="hduser")
result <- dbGetQuery(mylocal,"show databases;");
result
dbDisconnect(mylocal)


ucscDB <- dbConnect(MySQL(), user="genome", host="genome-mysql.cse.ucsc.edu")
result <- dbGetQuery(ucscDB,"Show databases;")
result

hg19 <- dbConnect(MySQL(), user="genome",db="hg19", host="genome-mysql.cse.ucsc.edu")
allTables <- dbListTables(hg19)
length(allTables)
allTables [1:5]
dbListFields(hg19,"HInv")
dbGetQuery(hg19,"select count(*) from HInv")
dbGetQuery(hg19,"select * from HInv limit 10;")
