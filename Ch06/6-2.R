#날짜 2020 08 05
#이름 박수오
#내용 R MongoDB 연동

install.packages('mongolite')
library(mongolite)
library(dplyr)

conn <- mongolite::mongo(url = 'mongodb://pso:1324@192.168.50.82:27017/pso',
                         db = 'pso',
                         collection = 'movies',
                         verbose = TRUE,
                         options = ssl_options())

df_movies <- conn$find()
View(df_movies)
