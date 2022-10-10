install.packages('data.table')
install.packages('dplyr')
install.packages('tidyverse')

library(data.table)
library(dplyr)
library(tidyverse)

general_data<-fread("https://covid.ourworldindata.org/data/owid-covid-data.csv") # carrega dados de covid19 no mundo

latin_america_countries<-c("Argentina", "Brazil", "Bolivia", "Chile", "Colombia", "Costa Rica", "Cuba", "Dominican Republic", "Ecuador", "El Salvador", "Guatemala", "Haiti", "Honduras", "Mexico", "Nicaragua", "Panama", "Paraguay", "Peru", "Uruguay", "Venezuela") # vetor que identifica países latino americanos

sinistrosRecife2022Raw<-c("Boa Viagem", "Casa Forte") # vetor que identifica os bairros escolhidos


latin_america<- general_data %>% filter(location %in% latin_america_countries) # filtra casos apenas no vetor
sinistrosRecife2022Raw<- sinistrosRecifeRaw %>% filter(bairro%in%sinistrosRecifeRaw)

mlatin <- latin_america %>% group_by(location) %>% mutate(row = row_number()) %>% select(location, new_cases, row) # cria matriz dos países, agrupando por local, criando uma nova linha com index e selecionando apenas algumas variáveis
sinistrosRecifeRaw <-sinistrosRecifeRaw%>% group_by(bairro) %>% mutate(row = row_number()) %>% select (bairro, situacao_semaforo, row)

# filtra dados para garantir que todos os países tenham mesmo nro de casos
result <- mlatin %>% group_by(location) %>% filter(row == max(row))
result <- sinistrosRecifeRaw %>% group_by(bairro) %>% filter(row == max(row))
mlatin <- mlatin %>% filter(row<=min(result$row)) 
sinistrosRecifeRaw <- sinistrosRecifeRaw %>% filter(row<=min(result$bairro))

# pivota o data frame de long para wide
mlatinw <- mlatin %>% pivot_wider(names_from = row, values_from = new_cases) %>% remove_rownames %>% column_to_rownames(var="location") 
resultw <- result %>% pivot_wider(names_from = row, values_from = situacao_semaforo) %>% remove_rownames %>% column_to_rownames(var="bairro")
