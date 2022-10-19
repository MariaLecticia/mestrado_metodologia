#### CARREGANDO PACOTES ####
pacman::p_load(dplyr, tidyverse)
library(dplyr)
library(tidyverse)
library(data.table)
library(funModeling)

#### LENDO AS BASES PARA O R ####
# opção para quem baixou a base
baseCodMun <- read.table('bases_originais/base_codigos_mun.txt', sep = ',', header = T, encoding = 'UTF-8')

campusIES <- read.csv2('bases_originais/ies_georref.csv')

# opção para pegar as bases diretamente do github
baseCodMun <- read.table('https://raw.githubusercontent.com/hugoavmedeiros/cp_com_r/master/bases_originais/base_codigos_mun.txt', sep = ',', header = T, encoding = 'UTF-8')

campusIES <- read.csv2('https://raw.githubusercontent.com/hugoavmedeiros/cp_com_r/master/bases_originais/ies_georref.csv')

campusIES <- left_join(campusIES, baseCodMun, by = c('CO_MUNICIPIO' = 'id_munic_7'))

#### LENDO AS BASES PARA O R ####
Alunos1 <- read.csv2("Alunos1.csv")
Alunos2 <- read.csv2("Alunos2")

Alunossalas <- read.csv("Alunossalas.csv")
Alunoscompleta <- read.csv("Alunoscompleta.csv")

Alunoscompleta <- left_join(Alunoscompleta, Alunossalas, by = c('sala.ano' = 'sala'))

Alunoscompleta <- left_join(Alunoscompleta, Alunossalas, by = c('nome.x' = 'nome'))
