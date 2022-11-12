# fun??es de repeti??o - fam?lia apply

# m?dia de cada vari?vel do data frame iris
apply(iris[ ,-5], 2, mean) # iris[,-5] retira a ?ltima coluna, que n?o ? num?rica. no segundo par?metro, o 2 indica que queremos a m?dia das colunas.

lapply(iris[, -5], mean) # sintaxe mais simples, pois n?o precisa especificar se ? coluna ou linha
sapply(iris[, -5], mean) # mesma sintaxe, sendo a principal diferen?a que a sapply sempre tenta simplificar o resultado

par(mfrow = c(2, 2)) # prepara a ?rea de plotagem para receber 4 plots

sapply(iris[ , 1:4], hist)
mapply(hist, iris[ , 1:4], MoreArgs=list(main='Histograma', xlab = 'Valores', ylab = 'Frequ?ncia')) # mapply tem a vantagem de aceitar argumentos da fun??o original

for (i in 1:4) { # cria o loop, que deve ir de 1 a 4
  x <- iris[ , i] # atribui as colunas da base de dados a uma vari?vel tempor?ria
  hist(x,
       main = names(iris)[i], # atribui o nome ao gr?fico de forma incremental, passando coluna por coluna
       xlab = "Valores da Vari?vel", # r?tulo eixo x
       ylab = 'Frequ?ncia', # r?tulo eixo y
       xlim = c(min(iris[, i]), max(iris[, i]))) # limites do eixo x
  
  
  # m?dia de cada vari?vel do data frame milsa
  summary(iris)
  View(iris)
  apply(milsa[ ,-4], 2, mean) # iris[,-5] retira a ?ltima coluna, que n?o ? num?rica. no segundo par?metro, o 2 indica que queremos a m?dia das colunas.
  
  lapply(milsa[, -4], mean) # sintaxe mais simples, pois n?o precisa especificar se ? coluna ou linha
  sapply(milsa[, -4], mean) # mesma sintaxe, sendo a principal diferen?a que a sapply sempre tenta simplificar o resultado
  
  par(mfrow = c(2, 2)) # prepara a ?rea de plotagem para receber 4 plots
  
  sapply(milsa[ , 1:4], hist)
  mapply(hist, milsa[ , 1:4], MoreArgs=list(main='Histograma', xlab = 'Valores', ylab = 'Frequ?ncia')) # mapply tem a vantagem de aceitar argumentos da fun??o original
  
  for (i in 1:4) { # cria o loop, que deve ir de 1 a 4
    x <- milsa[ , i] # atribui as colunas da base de dados a uma vari?vel tempor?ria
    hist(x,
         main = names(milsa)[i], # atribui o nome ao gr?fico de forma incremental, passando coluna por coluna
         xlab = "Valores da Variável", # r?tulo eixo x
         ylab = 'Frequência', # r?tulo eixo y
         xlim = c(min(milsa[, i]), max(milsa[, i]))) # limites do eixo x
    