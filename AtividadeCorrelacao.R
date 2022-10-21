#Assunto: [QUANTI] Associacao entre variaveis
#Atividade: Correlação - Variaveis numericas

## CORRELAÇÃO COM R ##
# PRIMEIRO, VAMOS CARREGAR OS PACOTES
pacman::p_load(corrplot, dplyr, ggplot2)

# BASE DE DADOS IRIS SEM AS ESPÉCIES #
iris2 <- iris %>% select(-Species)

# TABELA DE CORRELAÇÃO COM TODAS AS VARIÁVEIS #
cor(iris2)

# GRÁFICOS DE DISPERSÃO PAREADOS DAS VARIÁVEIS #
pairs(iris2)

# CORRPLOT DAS VARIÁVEIS #
irisCor <- cor(iris2)
corrplot(irisCor, method = "number", order = 'alphabet')
corrplot(irisCor, order = 'alphabet')

# BASE DE DADOS enem_escola_pe_2019 SEM ANO, SEM ID, SEM TIPO #
enem_escola_pe_20192 <- enem_escola_pe_2019 %>% select(-ANO, -ID, -tipo)

# TABELA DE CORRELAÇÃO COM TODAS AS VARIÁVEIS #
cor(enem_escola_pe_20192)

# GRÁFICOS DE DISPERSÃO PAREADOS DAS VARIÁVEIS #
pairs(enem_escola_pe_20192)

# CORRPLOT DAS VARIÁVEIS #
enem_escola_peCor <- cor(enem_escola_pe_20192)
corrplot(enem_escola_peCor, method = "number", order = 'alphabet')
corrplot(enem_escola_peCor, order = 'alphabet')
