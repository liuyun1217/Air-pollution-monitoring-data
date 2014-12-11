pollutantmean <- function(directory, pollutant,id = 1:332) {
    ## 'directory' 是长度为1的字符向量，指明
    ## CSV文件的位置
    files <- list.files(directory, full.names=TRUE)
    ## 'pollutant' 是长度为1的字符向量，指明
    ## 污染物的名称，我们将会计算其 , pollutant
    ## 平均值; 要么是“硫酸盐(sulfate)”要么是“硝酸盐(nitrate)”
    dat <- data.frame()
    ## 'id'是正整数向量，指明监测点的ID，
    ## 将要被要使用的
    for (i in id) {
        dat <- rbind(dat, read.csv(files[i]))
    }
    csvmean <- mean(dat[,pollutant],na.rm = TRUE)
    
    ## 返回列表内的所有监测点的污染物平均值，
    ## “id”向量中的 (忽略 NA值)
    csvmean
}
