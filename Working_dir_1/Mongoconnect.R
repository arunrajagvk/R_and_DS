install.packages("RODBC")
library(RODBC)
dbhandle <- odbcDriverConnect('driver={SQL Server};server= .lan;database=VC_POC;trusted_connection=true')


install.package
R CMD INSTALL rJava
install.packages("rJava",type='source')

######################################################

SQL SERVER CONNECTION

######################################################
require(RJDBC)
drv <- JDBC("com.microsoft.sqlserver.jdbc.SQLServerDriver",
            "/home/arunraja/Documents/sqljdbc4.jar") 
conn <- dbConnect(drv, "jdbc:sqlserver:// .lan", "lis", "li_123")
#then build a query and run it
args(dbConnect)
showMethods("dbConnect") 

sqlText <- paste(" use VC_POC;
   SELECT top 10 * FROM t_Products_New_Local
  ", sep=";")

queryResults <- dbGetQuery(conn, sqlText)



######################################################

MONGO DB CONNECTION

######################################################

library("rmongodb")
mongo <- mongo.create(host = " ", name = "", username = "",
                      password = "", db = "test", timeout = 0L)

if (mongo.is.connected(mongo)) {
  buf <- mongo.bson.buffer.create()
  mongo.bson.buffer.append(buf, "name", "Ram")
  mongo.bson.buffer.append(buf, "age", 22L)
  b <- mongo.bson.from.buffer(buf)
  mongo.insert(mongo, "test.people", b)
}

lst <- list(name="Arunraja", age=25)
b <- mongo.bson.from.list(lst)
# the above produces a BSON object of the form:
# { "name" : "John", "age" : 32.0 }
# Convert a vector of an atomic type to a list and
# then to a mongo.bson object
v <- c(president="Jefferson", vice="Burr")
b <- mongo.bson.from.list(as.list(v))
mongo.insert(mongo, "test.people", b)
# the above produces a BSON object of the form:
# { "president" : "Jefferson", "vice" : "Burr" }

