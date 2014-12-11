corr <- function(directory, threshold = 0,id = 1:332) {
    ## 'directory' �ǳ���Ϊ1���ַ�������ָ��
    ## CSV�ļ���λ��
    files <- list.files(directory, full.names=TRUE)
    ##����һ���յ����ݿ���װ�ܵĹ۲�����
    comdat <- data.frame()
    dat <- data.frame()
    ##mÿһ��ѭ����ȡһ��Ĺ۲����������Ƿ�NA������01��
    ##����������2�ģ�����TRUE���������Ĺ۲���
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