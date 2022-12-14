#Assunto: [QUANTI] Estat?stica Descritiva
#Atividade: Estat?stica Descritiva B?sica no R

### Estat?stica Descritiva com R
## Tabela de frequ?ncia absoluta da vari?vel Murder da base USArrests
table(USArrests$Murder)

## Tabela de frequ?ncia relativa da vari?vel Murder da base USArrests
prop.table(table(USArrests$Murder))

## M?dia da vari?vel Assault da base USArrests
mean(USArrests$Assault)

## Mediana da vari?vel Assault da base USArrests
median(USArrests$Assault)

## Separatrizes da vari?vel Assault da base USArrests
quantile(USArrests$Assault, probs=0.75)
quantile(USArrests$Assault, probs=0.10)
quantile(USArrests$Assault, probs=0.95)
boxplot(USArrests$Assault) # boxplot - gr?fico que resume as sepatrizes

## Desvio-padr?o da vari?vel Assault da base USArrests
sd(USArrests$Assault)
plot(USArrests$Assault)

## Sum?rio descritivo b?sico das vari?veis
summary(USArrests)

## Sum?rio descritivo completo das vari?veis usando o pacote fBasics
pacman::p_load(fBasics)
basicStats(USArrests[ , c(1:4)])
hist(USArrests$Assault) # histograma - gr?fico que permite conhecer a curva dos dados
