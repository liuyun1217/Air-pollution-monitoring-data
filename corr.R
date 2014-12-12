corr <- function(directory, threshold = 0,id = 1:332) {
    ## 'directory' 是长度为1的字符向量，指明
    ## CSV文件的位置
    files <- list.files(directory, full.names=TRUE)
    ##定义一个空的数据框来装总的观测数据
    dat <- data.frame()
    cordat<- vector()
    ##调用complete来输出具有完整观测的观测点
    comdat<<-complete(directory)
    for(i in id){
        
        if(comdat[i,2]>threshold)
        {
            cavdat <<- read.csv(files[i])
            dat <-na.omit(cavdat)
            cordat <-rbind(cordat,round(cor(dat$sulfate,dat$nitrate),digits = 5))
        }
        else{}
    }

        
        datx <<-dat
        cordat <-as.vector(cordat)
        cordat
        
    
    
}