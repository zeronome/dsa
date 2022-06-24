# Lista de Exercícios - Capítulo 2

# Obs: Caso tenha problemas com a acentuação, consulte este link:
# https://support.rstudio.com/hc/en-us/articles/200532197-Character-Encoding

# Configurando o diretório de trabalho
# Coloque entre aspas o diretório de trabalho que você está usando no seu computador
# Não use diretórios com espaço no nome
setwd("F:\OneDrive\Cursos\Avulsos\DSA-Cientista_dados\I_Azure_R\Cap02")
getwd()

# Exercício 1 - Crie um vetor com 30 números inteiros
vector <- c(1:30)

# Exercício 2 - Crie uma matriz com 4 linhas e 4 colunas preenchida com números inteiros
matriz <- matrix(c(1:16), nr = 4)

# Exercício 3 - Crie uma lista unindo o vetor e matriz criados anteriormente
lista <- list(vetor = vector, matriz = matriz)


# Exercício 4 - Usando a função read.table() leia o arquivo do link abaixo para uma dataframe
# http://data.princeton.edu/wws509/datasets/effort.dat
dataframe1 <- read.table("http://data.princeton.edu/wws509/datasets/effort.dat", header = TRUE)


# Exercício 5 - Transforme o dataframe anterior, em um dataframe nomeado com os seguintes labels:
# c("config", "esfc", "chang")
dataframe2 <- dataframe1
colnames(dataframe2, c("config", "esfc", "chang"))


# Exercício 6 - Imprima na tela o dataframe iris, verifique quantas dimensões existem no dataframe iris e imprima um resumo do dataset
print(iris)
dim(iris)
str(iris)
summary(iris)

# Exercício 7 - Crie um plot simples usando as duas primeiras colunas do dataframe iris
#IMP! 
plot(iris[[1]], iris[,2])
plot(iris$Sepal.Length, iris$Sepal.Width, main = "Sepal Lenght vs Width", xlab = colnames(iris)[1], ylab = colnames(iris)[2])


# Exercício 8 - Usando a função subset, crie um novo dataframe com o conjunto de dados do dataframe iris em que Sepal.Length > 7
# Dica: consulte o help para aprender como usar a função subset()
dataframe3 <- subset(iris, Sepal.Length > 7)

# Exercícios 9 (Desafio) - Crie um dataframe que seja cópia do dataframe iris e usando a função slice(), divida o dataframe 
# em um subset de 15 linhas
# Dica 1: Você vai ter que instalar e carregar o pacote dplyr
# Dica 2: Consulte o help para aprender como usar a função slice()
install.packages("dplyr")
library(dplyr)
?slice
sample <- slice_sample(iris, n = 15, weight_by = iris[[2]])
# IMP! OBS: o [[]] permite passar a coluna como argumento de uma função em R

# Exercícios 10 - Use a função filter no seu novo dataframe criado no item anterior e retorne apenas valores em que Sepal.Length > 6
# Dica: Use o RSiteSearch para aprender como usar a função filter
help.search('filter')
??filter
RSiteSearch('filter')
?filter
filtro <- filter(sample, Sepal.Length >6)
