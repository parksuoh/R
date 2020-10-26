
install.packages('dplyr')
library(dplyr)

df_exam <- read.csv('../file/exam.csv')
View(df_exam)

#select - DF의 특정 컬럼 선택해서 새로운 DF생성
df_math <- df_exam %>% select(math)
df_english <- df_exam %>% select(english)
df_science <- df_exam %>% select(science)

df_math
df_english
df_science



#filter - DF의 특정 조건에 맞는 컬럼 선택해서 새로운 DF생성
df_class1 <- df_exam %>% filter(class ==1)
df_class1

#영어점수 60이상 그리고 80미만
df_english <- df_exam %>%  filter(english >= 60 & english < 80)
df_english


#SELECT class, id, math FROM df_exam WHERE math >= 60 ORDER BY math DESC LIMIT 3;
df_result <- df_exam %>% filter(math >= 60) %>%  
  select(class, id, math)  %>% 
  arrange(desc(math)) %>% 
  head(3)
df_result





#group_by - DF의 특정 컬럼에 대해 그룹화

df_group2 <- df_exam %>% group_by(class) %>% summarise(mean_math = mean(math))
df_group2


