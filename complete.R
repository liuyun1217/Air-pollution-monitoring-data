pollutantmean <- function(directory,id = 1:332) {
    ## 'directory' �ǳ���Ϊ1���ַ�������ָ��
    ## CSV�ļ���λ��
    files <- list.files(directory, full.names=TRUE)
    ## 'pollutant' �ǳ���Ϊ1���ַ�������ָ��
    ## ��Ⱦ������ƣ����ǽ�������� , pollutant
    ## ƽ��ֵ; Ҫô�ǡ�������(sulfate)��Ҫô�ǡ�������(nitrate)��
    comdat <- data.frame()
    ## 'id'��������������ָ�������ID��
    ## ��Ҫ��Ҫʹ�õ�
    for (i in id) {
        seledat <- read.csv(files[i])
        a <-(!is.na(seledat[,"nitrate"]))+(!is.na(seledat[,"sulfate"]))
        1com <- sum(a==2)
        comdat <- rbind(dat, c(1com,i)
    }
    
    ## �����б��ڵ����м������Ⱦ��ƽ��ֵ��
    ## ��id�������е� (���� NAֵ)
    comdat
    
}