install.packages('dplyr')
library(dplyr)
install.packages('lifecycle', dependencies = T)
install.packages('lifecycle')

library(dplyr)

facebook <- read.table("https://raw.githubusercontent.com/hugoavmedeiros/cd_com_r/master/bases_originais/dataset_Facebook.csv", sep=";", header = T)

# sum?rios
count(facebook, Type)
count(sinistrosRecife2019Raw, natureza_acidente)

# sum?rios com agrupamentos
facebook %>% group_by(Type) %>% summarise(avg = mean(like))
sinistrosRecife2019Raw %>% group_by(natureza_acidente) %>% summarise(avg = mean(auto))

facebook <- read.table("https://raw.githubusercontent.com/hugoavmedeiros/cd_com_r/master/bases_originais/dataset_Facebook.csv", sep=";", header = T)



### Transforma??o de Casos

# sele??o de casos
facebook %>%  filter(Type != "Photo") %>% summarise(avg = mean(like))
facebook %>%  filter(Type != "Photo") %>% group_by(Type, Paid) %>% summarise(avg = mean(like))

# sele??o de casos
sinistrosRecife2019Raw %>%  filter(natureza_acidente != "com v?tima") %>% summarise(avg = mean(auto))
sinistrosRecife2019Raw %>%  filter(natureza_acidente != "com v?tima") %>% group_by(natureza_acidente, ) %>% summarise(avg = mean(auto))

# ordenar casos
arrange(facebook, like) # ascendente
arrange(facebook, desc(like)) # descendente

# ordenar casos
arrange(sinistrosRecife2019Raw, auto) # ascendente
arrange(sinistrosRecife2019Raw, desc(auto)) # descendente

### Transforma??o de Vari?veis

# sele??o de colunas
facebook %>% select(like, Type, Paid) %>% arrange(like)

# sele??o de colunas
sinistrosRecife2019Raw %>% select(natureza_acidente, situacao) %>% arrange(natureza_acidente)

# novas colunas
facebook %>% mutate(likePerLifeTime = like/Lifetime.Post.Total.Reach)


# novas colunas
sinistrosRecife2019Raw %>% mutate(vitimaperauto = vitimas/auto)


# renomear
facebook %>% rename(Reach = Lifetime.Post.Total.Reach)

# renomear
sinistrosRecife2019Raw %>% rename(clima = tempo_clima)

