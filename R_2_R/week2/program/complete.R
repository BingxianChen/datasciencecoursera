complete <- function(direction, id = 1:332){
    
    df<-data.frame(id=seq(1,length(id)),nobs=seq(1,length(id)))
    count <- 1
    for(i in id){
        if(i < 10){
            direct <- paste(direction,'/',"00",i,".csv",sep="")
        }else if(i < 100){
            direct <- paste(direction,'/',"0",i,".csv",sep="")
        }else{
            direct <- paste(direction,'/',i,".csv",sep="")
        }
        f <- read.csv(direct,na.strings = "NA")
        nobs = sum(complete.cases(f))
        df[count,"id"] = i
        df[count,"nobs"] = nobs
        count = count + 1
    }
    df
}