# amostragem sem reposi??o usando fun??o sample
sample(distNormalSimulacao, 30, replace = FALSE) # se voc? n?o tiver o objeto distNormalSimulacao no seu ambiente, crie com o script anterior

# amostragem com reposi??o usando fun??o sample
sample(distNormalSimulacao, 30, replace = TRUE)

# bootstraping com fun??o replicate
set.seed(450) # agora, n?o vamos mais usar como tarefa mas como execu??o ponto a ponto

bootsDistNormal10 <- replicate(30, sample(distNormalSimulacao, 30, replace = TRUE)) # replicamos 10x a amostra, criando assim um bootstrapping
bootsDistNormal10

# calculando uma estat?stica com bootstrapping (10 amostras)
mediaBootsNormal10 <- replicate(30, mean(sample(distNormalSimulacao, 30, replace = TRUE))) # calculamos a m?dia de 10 amostras de 10 casos
mediaBootsNormal50 <- replicate(50, mean(sample(distNormalSimulacao, 30, replace = TRUE))) # calculamos a m?dia de 50 amostras de 10 casos
mediaBootsNormal100 <- replicate(100, mean(sample(distNormalSimulacao, 30, replace = TRUE))) # calculamos a m?dia de 100 amostras de 10 casos

# vamos comparar???
mean(mediaBootsNormal10) # media do boostraping 10
mean(mediaBootsNormal50) # media do boostraping 50
mean(mediaBootsNormal100) # media do boostraping 100
mean(distNormalSimulacao) # media dos dados originais

# parti??es
install.packages('caret', dependencies = T) # caret ? um pacote geral de machine learning # se j? tiver n?o, innstale =D
library(caret)

# primeiro, criamos as parti??es de dados
particaoDistNormal <- createDataPartition(1:length(distNormalSimulacao), p=.7) # passamos o tamanho do vetor e o par?metro de divis?o
treinoDistNormal <- distNormalSimulacao[unlist(particaoDistNormal)] # criamos uma parti??o para treinar os dados, usando a parti??o anterior. Aten??o: o comando unlist ? muito usado para transformar uma lista num vetor
testeDistNormal <- distNormalSimulacao[- unlist(particaoDistNormal)] # criamos uma parti??o para testar os dados, usando a parti??o anterior. Aten??o: o comando unlist ? muito usado para transformar uma lista num vetor
