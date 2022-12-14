# seta a semente aleat?ria de gera??o de dados
# usando a fun??o addTaskCallback deixamos a set.seed fixa, rodando no back

tarefaSemente <- addTaskCallback(function(...) {set.seed(200);TRUE}) # atribui a tarefa ? vari?vel tarefaSemente
tarefaSemente # chama a tarefaSemente

# distribui??o normal simulada
distNormalSimulacao <- rnorm(100) # usa a fun??o rnorm para criar uma distribui??o normal, indicando o total de casos

summary(distNormalSimulacao) # sum?rio da distNormalSimulacao

# distribui??o binomial simulada
distBinominalSimulacao <- rbinom(100, 1, 0.7) # rbinom para criar distribui??o binominal, indicando casos, tamanho e probabilidade

# repeti??es
classeSimulacao <- c(rep("Jovem", length(distBinominalSimulacao)/2), rep("Jovem Adulto", length(distBinominalSimulacao)/2)) # vetor repetindo a classe Jovem 15x e Jovem Adulto 15x

# sequ?ncias
indexSimulacao <- seq(1, length(distNormalSimulacao)) # vetor com ?ndex dos dados, usando a fun??o length para pegar o total de casos

# por fim, podemos usar a fun??o removeTaskCallback para remover a tarefa que criamos l? em cima
removeTaskCallback(tarefaSemente)
