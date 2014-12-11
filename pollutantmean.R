pollutantmean <- function(directory, pollutant,id = 1:332) {
    ## 'directory' �ǳ���Ϊ1���ַ�������ָ��
    ## CSV�ļ���λ��
    files <- list.files(directory, full.names=TRUE)
    ## 'pollutant' �ǳ���Ϊ1���ַ�������ָ��
    ## ��Ⱦ������ƣ����ǽ�������� , pollutant
    ## ƽ��ֵ; Ҫô�ǡ�������(sulfate)��Ҫô�ǡ�������(nitrate)��
    dat <- data.frame()
    ## 'id'��������������ָ�������ID��
    ## ��Ҫ��Ҫʹ�õ�
    for (i in id) {
        dat <- rbind(dat, read.csv(files[i]))
    }
    csvmean <- mean(dat[,pollutant],na.rm = TRUE)
    
    ## �����б��ڵ����м������Ⱦ��ƽ��ֵ��
    ## ��id�������е� (���� NAֵ)
    csvmean
}