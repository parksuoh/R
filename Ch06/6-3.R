#날짜 2020 08 05
#이름 박수오
#내용 하둡 데이터베이스 연동

install.packages("devtools")
devtools::install_github(c("saurfang/rwebhdfs"))
library(rwebhdfs)

hdfs <- webhdfs('192.168.100.101', 50070, 'root')

df_sale2017 <- read_file(hdfs, '/sample/sales2017.csv')

