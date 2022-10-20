#Assunto: [QUANTI] Analise Exploratoria de Dados
#Atividade: Validacao

pacman::p_load(data.table, dplyr, tidyverse, validate)

general_data <- fread("https://covid.ourworldindata.org/data/owid-covid-data.csv") # carrega dados de covid19 no mundo

latin_america_countries <-c("Argentina", "Brazil", "Bolivia", "Chile", "Colombia", "Costa Rica", "Cuba", "Dominican Republic", "Ecuador", "El Salvador", "Guatemala", "Haiti", "Honduras", "Mexico", "Nicaragua", "Panama", "Paraguay", "Peru", "Uruguay", "Venezuela") # vetor que identifica pa?ses latino americanos

latin_america <- general_data %>% filter(location %in% latin_america_countries) # filtra casos apenas no vetor

latin_america <- latin_america %>% select(location, new_cases, new_deaths)

regras_latin_america <- validator(new_cases >= 0, new_deaths >= 0)

validacao_latin_america <- confront(latin_america, regras_latin_america)

summary(validacao_latin_america)

plot(validacao_latin_america)

sinistrosRecife2019Raw <- fread
sem_vitima_casos <- c ("sem vítima")
sinistrosRecifesemvitima <- sinistrosRecife2019Raw %>% filter(natureza_acidente %in% sem_vitima_caso)

