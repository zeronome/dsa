# Primeiros Passos na Linguagem R

# IMP! Obs: Caso tenha problemas com a acentuação, consulte este link:
# https://support.rstudio.com/hc/en-us/articles/200532197-Character-Encoding

# Configurando o diretório de trabalho
# Coloque entre aspas o diretório de trabalho que você está usando no seu computador
# Não use diretórios com espaço no nome
setwd("C:/workspace/dsa/r_azure")
getwd()


# Nome dos Contributors
contributors()


# Licença
license()


# Informações sobre a sessão
sessionInfo()


# Imprimir na tela
print('Estou iniciando minha caminhada na carreira de Cientista de Dados')


# Criar gráficos
plot(1:25)


# Instalar pacotes
install.packages('randomForest')
install.packages('ggplot2')
install.packages("dplyr")
install.packages("devtools")


# Carregar o pacote
library(ggplot2)


# Descarregar o pacote
detach(package:ggplot2)


# Se souber o nome da função
# IMP! Mecanismos de busca e pesquisa na linguagem R
help(mean)
?mean


# Para buscar mais opções sobre uma função, use o pacote SOS
install.packages("sos")
library(sos)
findFn("fread")


# Se não souber o nome da função
help.search('randomForest')
help.search('matplot')
??matplot
RSiteSearch('matplot')
# IMP! Mostra um exemplo de uso de uma função
example('matplot')


# Sair
q()


