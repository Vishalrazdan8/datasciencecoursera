pollutantmean <- function(directory,pollutant,id)
  { path <- paste0(getwd(),"/", directory,sep="") 
    files_list <- list.files(path)
    for (i in id)  
     {  data <- read.csv(paste0(path,"/",files_list[i],sep=""))
        datanom <- na.omit(data) 
        if (pollutant == "sulfate") {  
            data1 <- datanom$sulfate 
        } else {
           data1 <- datanom$nitrate
        }
        print(mean(data1)) 
     } 
   }