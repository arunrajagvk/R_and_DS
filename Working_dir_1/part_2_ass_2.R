pollutantmean <- function(directory,calculate,newid=1:332){
     
     add_dataset <-NULL
     temp1_dataset <- NULL
     final <- NULL
     
     for (i in 1:length(newid))
     {
          if(nchar(newid[i])==1)
          {
               final[i]<-gsub(" ", "",paste(directory,"00",as.character(newid[i]),".csv"))
          }
          if(nchar(newid[i])==2)
          {
               final[i]<-gsub(" ", "",paste(directory,"0",as.character(newid[i]),".csv"))
               
          }
          if(nchar(newid[i])==3)
          {
               final[i]<-gsub(" ", "",paste(directory,as.character(newid[i]),".csv"))
               
          }
     }
     for (file in final){
          if (!exists("dataset")){
               add_dataset <-read.csv(file, header=TRUE, sep=",",na.strings = "NA")
          }
          
          
          # if the merged dataset does exist, append to it
          if (exists("dataset")){
               temp1_dataset <-read.table(file, header=TRUE, sep=",",na.strings = "NA")
               add_dataset<-rbind(add_dataset, temp1_dataset)
               rm(temp1_dataset)
          }
     }
     
     # final
     
     cal.mean <- mean(add_dataset[[calculate]],na.rm=T)
     cal.mean
#      if(calculate=="sulfate"){
#           sul.mean <- mean(add_dataset$sulfate,na.rm=T)
#          
#      }
#     #sul.mean
#      
#      if(calculate=="nitrate"){
#           nit.mean <- mean(add_dataset$nitrate,na.rm=T)
#      
#      }
#      nit.mean
   
    
     #add_dataset
}


#pollutantmean("/home/hduser/R_and_DS/Working_dir_1/specdata/","nitrate", 70:72)
pollutantmean("specdata", "sulfate", 1:10)

####################### ####################### ####################### #######################


