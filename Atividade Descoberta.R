#Assunto: [QUANTI] Analise Exploratoria de Dados
#Atividade: Descoberta

#Instalando 

install.packages("funModeling")
install.packages("tidyverse")

library(funModeling)
library(tidyverse)

pacman::p_load(funModeling, tidyverse) 

glimpse(iris) # olhada nos dados
status(iris) # estrutura dos dados (missing etc)
freq(iris) # frequ?ncia das vari?veis fator
plot_num(iris) # explora??o das vari?veis num?ricas
profiling_num(iris) # estat?sticas das vari?veis num?ricas

glimpse(campusIES) # olhada nos dados
status(campusIES) # estrutura dos dados (missing etc)
freq(campusIES) # frequ?ncia das vari?veis fator
plot_num(campusIES) # explora??o das vari?veis num?ricas
profiling_num(campusIES) # estat?sticas das vari?veis num?ricas
