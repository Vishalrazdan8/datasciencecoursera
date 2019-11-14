pollutantmean <- function(directory,pollutant,id = 1:332)
  { path <- paste0(getwd(),"/", directory,sep="") 
    total <- 0
    obsern <- 0
    files_list <- list.files(path)
    for (i in id)  
     {  data <- read.csv(paste0(path,"/",files_list[i],sep=""))
        datanom <- na.omit(data) 
        obsern <- obsern + nrow(datanom)
        
        if (pollutant == "sulfate") {  
            total = total + sum(datanom$sulfate) 
        } else {
           total = total + sum (datanom$nitrate)
        }
    } 
    return(total/obsern) 
   }