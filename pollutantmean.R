pollutantmean <- function(directory, pollutant,id = 1:332) {
    ## 'directory' 是长度为1的字符向量，指明
    ## CSV文件的位置
    files <- list.files(directory, full.names=TRUE)
    ##定义一个空的数据框来装总的观测数据
    dat <- data.frame()
    ##每循环一次，rbind进dat里
    for (i in id) {
        dat <- rbind(dat, read.csv(files[i]))
    }
    ##根据所选的观测项，去除NA后作平均
    csvmean <- mean(dat[,pollutant],na.rm = TRUE)
    
    ## 输出
    csvmean
}
