pollutantmean <- function(direction, pollutant,id = 1:332){
    total_sum <- 0
    total_length <- 0
    for(i in id){
        if(i < 10){
            direct <- paste(direction,'/',"00",i,".csv",sep="")
        }else if(i < 100){
            direct <- paste(direction,'/',"0",i,".csv",sep="")
        }else{
            direct <- paste(direction,'/',i,".csv",sep="")
        }
        f <- read.csv(direct,na.strings = "NA")
        temp <- na.omit(f[,pollutant])
        #temp <- as.vector(temp)
        total_length <- total_length + length(temp)
        total_sum <- total_sum + sum(temp,na.rm = TRUE)
    }
    total_sum/total_length
}


