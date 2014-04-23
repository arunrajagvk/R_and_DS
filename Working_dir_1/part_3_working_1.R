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
