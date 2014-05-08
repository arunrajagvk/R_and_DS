available.packages()
install.packages("KernSmooth")
library(KernSmooth)
ls()
attributes(rnorm)
z <- "v"
z <- 1:14444
z <- vector("complex",length=5)
z <- c("vvv",1.5)
z <- c(T,1.5)
as.character(z)

z
help(list)
m<-list(m1=1:10,m2="S")
m[m1$5]
m[[1]][[6]]
m$m2
m[["m2"]]
install.packages("swirl")
library("swirl")
swirl()
# | When you are at the R prompt (>):
#   | -- Typing skip() allows you to skip the current question.
# | -- Typing play() lets you experiment with R on your own; swirl will ignore what you do...
# | -- UNTIL you type nxt() which will regain swirl's attention.
# | -- Typing bye() causes swirl to exit. Your progress will be saved.
# | -- Typing info() displays these options again.

x <- list(2, "a", "b", TRUE)
x[[2]]
conn<-file("/home/arunraja/Downloads/hw1_data.csv")
readLines(conn,5)
?readline

readline("/home/arunraja/Downloads/hw1_data.csv")

classes <- sapply(conn, class)

?sapply
classes

miss<-subset(new)
calc<-subset(miss,Ozone>31 & Temp>90)
mean(calc$Solar.R)
miss$Temp

cc<-subset(miss,Month==5)
max(cc$Ozone,na.rm=T)

x <- 1:4
y <- 2:3
x+y



calc<-(!is.na(miss)- is.na(miss))
mean(calc)
mean(!is.na(new$Ozone))
miss
mean(miss,na.rm=T)
?mean

new
Oni<-c(new$Ozone)>31

getwd()
setwd("/home/hduser/")
{
if(!file.exists("specdata"))
{
    ret <-"no"
   }
else {
     ret <- "No" 
}
}

ret

library(MASS)


data(michelson)
bwplot(Expt ~ Speed, data = michelson,ylab = "Experiment No.")
> title("Speed of Light Data")

> data(hills)
 attach(hills)
 bwplot(climb ~ time, hills, xlab = "Time", ylab = "Feet")
 abline(0, 40)
 abline(lm(climb ~ time))

nvec <- rnorm(100, 3)
t.test(nvec)
?t.test


