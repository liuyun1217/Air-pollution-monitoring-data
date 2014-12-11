corr <- function(directory, threshold = 0,id = 1:332) {
    ## 'directory' 是长度为1的字符向量，指明
    ## CSV文件的位置
    files <- list.files(directory, full.names=TRUE)
    ##定义一个空的数据框来装总的观测数据
    comdat <- data.frame()
    dat <- data.frame()
    ##m每一次循环读取一天的观测数，利用是否NA来进行01化
    ##加起来等于2的，即两TRUE才是完整的观测数
    for (i in id) {
        seledat <- read.csv(files[i])
        a <-(!is.na(seledat[,"nitrate"]))+(!is.na(seledat[,"sulfate"]))
        onecom <- sum(a==2)
        comdat <- rbind(comdat, c(i,onecom))
        if(onecom>threshold)
        {
            dat <- rbind(dat, read.csv(files[i]))
        }
    }


        dat <-na.omit(dat)
        cor(dat["sulfate"],dat["nitrate"],method = c("pearson", "kendall", "spearman"))
    
    
}