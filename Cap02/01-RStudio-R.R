# Primeiros passos com a Linguagem R

# Configurando o diretório de trabalho
# Coloque entre aspas o diretório de trabalho que você está usando no seu computador
# Não coloque diretórios com espaço no nome
setwd("F:/OneDrive/Cursos/Avulsos/DSA-Cientista_dados/I_Azure_R/Cap02")
getwd()

# Nome dos contribuidores
contributors()

# Licença
license()

# Informações da sessão
sessionInfo()

# Imprimir na tela
print("Estou iniciando minha carreira Cientista de Dados")

# Criar gráficos
plot(1:25)

# Instalando pacotes
install.packages('randomForest')
install.packages('ggplot2')
install.packages("dplyr")
install.packages("devtools")
install.packages('caret')

# Carregar o pacote
library(ggplot2)

# Descarregar o pacote
detach(package:ggplot2)

# Buscando por ajuda, se souber o nome da função
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
example('matplot')

# Sair
q()
