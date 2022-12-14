#Assunto: [QUANTI] Testes de Hip?tese
#Atividade: Testes de Hip?tese

# PACOTES #
pacman::p_load(data.table)

# LEITURA PARA TESTE DE CORRELA??O #
enem_escola_pe_2019 <- fread('https://raw.githubusercontent.com/hugoavmedeiros/cp_com_r/master/bases_tratadas/ENEM_ESCOLA_2019.csv', dec = ',')

cor.test(enem_escola_pe_2019$nota, enem_escola_pe_2019$TDI_03)
# H0: vari?veis s?o independentes / n?o t?m associa??o. p-valor (p-value) > 0.05
# H1: vari?veis s?o dependentes / h? associa??o. p-valor (p-value) <= 0.05

# LEITURA PARA TESTE DE FREQU?NCIAS #
milsa <- fread('http://www.leg.ufpr.br/~paulojus/dados/milsa.dat')
chisq.test(milsa$civil, milsa$instrucao)
# H0: vari?veis s?o independentes / n?o h? associa??o. p-valor (p-value) > 0.05
# H1: vari?veis s?o dependentes / h? associa??o. p-valor (p-value) <= 0.05

#Correla??o entre diversos par?metros:
cor.test(enem_escola_pe_2019$nota, enem_escola_pe_2019$MHA_EM)
cor.test(enem_escola_pe_2019$nota, enem_escola_pe_2019$TDI_02)
