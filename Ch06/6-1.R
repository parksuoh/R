#날짜 2020 08 05
#이름 박수오
#내용 R 데이터베이스 연동

install.packages('RMySQL')
library(RMySQL)
library(dplyr)
library(ggplot2)

#데이터베이스 접속
conn <- dbConnect(MySQL(),
                  host='192.168.50.82',
                  user='pso',
                  password='1234',
                  dbname='pso')

df_sale2017 <-dbGetQuery(conn, statement = 'SELECT * FROM `SALE_2017`')
View(df_sale2017)

df_sale2017 <- df_sale2017 %>% 
              group_by(uid) %>% 
              summarise(total=sum(sale)) %>% 
              arrange(desc(total))
View(df_sale2017)


#그래프 출력
ggplot(data=df_sale2017 , aes(x=uid , t=total )) + geom_col()
