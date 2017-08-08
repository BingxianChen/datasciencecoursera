corr <- function(directory, threshold =0){
    x <- c()
    for (filename in dir(directory)){
        direct <- paste(directory,'/',filename,sep="")
        df <- read.csv(direct,na.strings = "NA")
        df <- na.omit(df)
        if(nrow(df) > threshold){
            co <- cor(df$sulfate,df$nitrate)
            x <- c(x,co)
        }
    }
    x
}