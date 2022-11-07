### CARREGANDO PACOTES ###
pacman::p_load(car, gvlma, lm.beta, lmtest, MASS, sandwich)

### REGRESSÃO FERTILIDADE - BASE SWISS
regSwiss <- lm(Fertility ~ ., data = swiss) # ESTIMANDO A REGRESSÃO
summary(regSwiss) # SUMÁRIO DA REGRESSÃO
lm.beta(regSwiss) # COEFICIENTES PADRONIZADOS

# Stepwise #
regSwissBack <- step(lm(Fertility ~ ., data = swiss), direction = 'backward') # de trás pra frente
summary(regSwissBack)
regSwissForw <- step(lm(Fertility ~ ., data = swiss), direction = 'forward') # do início pro fim
summary(regSwissForw)
regSwissBoth <- step(lm(Fertility ~ ., data = swiss), direction = 'both') # nos dois sentidos summary(regSwissBoth)

### VERIFICAÇÃO DOS PRESSUPOSTOS ###
# normalidade dos resíduos
shapiro.test(residuals(regSwiss))
plot(regSwiss, which=1, col=c("blue")) # resíduos x ajuste
plot(regSwiss, which=2, col=c("red")) # Q-Q Plot
plot(regSwiss, which=5, col=c("blue"))  # Observações Influentes

#= Correção seria retirar as observações influentes =#

# inflação da variância / multicolinearidade
vif(regSwiss)
barplot(vif(regSwiss), main = "VIF Values", horiz = FALSE, col = "steelblue", ylim = c(0,5))
abline(h = 5, lwd = 3, lty = 2)

#= Correção seria usar apenas uma das variáveis correlacionadas =#

# homocedasticidade (H0 = homocedasticidade)
bptest(regSwiss) # teste de homocedasticidade
plot(regSwiss, which=3, col=c("blue"))  # Scale-Location Plot

#= Correção seria usar estimativas robustas =#
regSwiss$robse <- vcovHC(regSwiss, type = "HC1")
coeftest(regSwiss, regSwiss$robse)

regRSwiss <- rlm(Fertility ~ . -Examination, data = swiss)
summary(regRSwiss)
summary(regSwiss)

#### FAZENDO A ATIVIDADE ####
### CARREGANDO PACOTES ###
pacman::p_load(car, gvlma, lm.beta, lmtest, MASS, sandwich)

### REGRESSÃO ASSAULT - BASE USArrests
regUSArrests <- lm(Assault ~ ., data = USArrests) # ESTIMANDO A REGRESSÃO
summary(regUSArrests) # SUMÁRIO DA REGRESSÃO
lm.beta(regUSArrests) # COEFICIENTES PADRONIZADOS


# Stepwise #
regUSArrestSBack <- step(lm(Assault ~ ., data = USArrests), direction = 'backward') # de trás pra frente
summary(regUSArrestSBack)
regUSArrestSForw <- step(lm(Assault ~ ., data = USArrests), direction = 'forward') # do início pro fim
summary(regUSArrestForw)
regUSArrestSBoth <- step(lm(Assault ~ ., data = USArrests), direction = 'both') # nos dois sentidos summary(regSwissBoth)

### VERIFICAÇÃO DOS PRESSUPOSTOS ###
# normalidade dos resíduos
shapiro.test(residuals(regUSArrests))
plot(regUSArrests, which=1, col=c("blue")) # resíduos x ajuste
plot(regUSArrests, which=2, col=c("red")) # Q-Q Plot
plot(regUSArrests, which=5, col=c("blue"))  # Observações Influentes

#= Correção seria retirar as observações influentes =#

# inflação da variância / multicolinearidade
vif(regUSArrests)
barplot(vif(regUSArrests), main = "VIF Values", horiz = FALSE, col = "steelblue", ylim = c(0,5))
abline(h = 5, lwd = 3, lty = 2)

#= Correção seria usar apenas uma das variáveis correlacionadas =#

# homocedasticidade (H0 = homocedasticidade)
bptest(regUSArrests) # teste de homocedasticidade
plot(regUSArrests, which=3, col=c("blue"))  # Scale-Location Plot

#= Correção seria usar estimativas robustas =#
regUSArrests$robse <- vcovHC(regUSArrests, type = "HC1")
coeftest(regUSArrests, regUSArrests$robse)

regUSArrests <- rlm(Assault ~ . -Examination, data = Arrests)
summary(regUSArrests)
summary(regUSArrests)
