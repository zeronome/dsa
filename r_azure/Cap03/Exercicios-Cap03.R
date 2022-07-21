# Lista de Exercícios - Capítulo 3

# Obs: Caso tenha problemas com a acentuação, consulte este link:
# https://support.rstudio.com/hc/en-us/articles/200532197-Character-Encoding

# Configurando o diretório de trabalho
# Coloque entre aspas o diretório de trabalho que você está usando no seu computador
# Não use diretórios com espaço no nome
setwd("F:/OneDrive/Cursos/Avulsos/DSA-Cientista_dados/I_Azure_R/Cap03")
getwd()

# Exercício 1 - Pesquise pela função que permite listar todos os arquivo no diretório de trabalho
search()
help('??')
help.search("list files")
list.files()

# Exercício 2 - Crie um dataframe a partir de 3 vetores: um de caracteres, um lógico e um de números
# IMP! Geração de dados aleatórios
install.packages("randomNames")
require(randomNames)
library(openssl)
require(stringr)
ls(getNamespace('randomNames'), all.names = TRUE)
lsf.str("package:randomNames")
size = 10
nomes <- randomNames(size, name.order = "first.last", name.sep = " ")
equipe <- gl(equips <- 2, size/equips, labels = paste("Equipe ", LETTERS[1:2]))
novato <- sample(as.logical(rawToBits(rand_bytes(2))), size)
cestas <- round(rand_num(size)*10)
data1 <- data.frame(equipe, novato, cestas, row.names = nomes)
data1$novato <- factor(data1$novato)
names(data1) <- str_to_title(names(data1))
View(data1)

# Exercício 3 - Considere o vetor abaixo. 
# Crie um loop que verifique se há números maiores que 10 e imprima o número e uma mensagem no console.

# Criando um Vetor
vec1 <- c(12, 3, 4, 19, 34)
vec1
for(i in vec1) {
  if(i > 10){
    print(c(i,"é maior que 10"), quote = FALSE)}
    #sprintf('%i > 10 \n',i)} # não sei por que não funcionou.
}

# Exercício 4 - Conisdere a lista abaixo. Crie um loop que imprima no console cada elemento da lista
lst2 <- list(2, 3, 5, 7, 11, 13)
lst2
for (j in lst2) {
  print(j)
  
}

# Exercício 5 - Considere as duas matrizes abaixo. 
# Faça uma multiplicação element-wise e multiplicação normal entre as matrizes
mat1 <- matrix(c(1:50), nrow = 5, ncol = 5, byrow = T)
mat1
mat2 <- t(mat1)
mat2

# Multiplicação element-wise
print("Multiplicação element-wise: \n")
mat1*mat2
# Multiplicação de matrizes
print("Multiplicação de matriz:\n")
mat1%*%mat2

# Exercício 6 - Crie um vetor, matriz, lista e dataframe e faça a nomeação de cada um dos objetos
vet <- runif(10, min = 0, max = 255)
vet
lista1 <- sample(LETTERS, 10)
lista1
names(lista1) <- paste("p", 1:length(lista1))
data2 <-list()
for (n in 1:10){
  data2[[n]] <- data.frame(n, sample(letters,1), floor(rnorm(1,50)))
}
data2<- do.call(rbind, data2)
names(data2) <- c("index", "id", "points")
View(data2)
data3 <- sample(1:100,10)
mat1 <- matrix(data = data3, r <-5 , byrow = T, dimnames = list(paste("l", 1:r), paste("c", 1:(length(data3)/r))))
mat1

# Exercício 7 - Considere a matriz abaixo. Atribua valores NA de forma aletória para 50 elementos da matriz
# Dica: use a função sample()
# IMP! Indexação aleatória
mat2 <- matrix(1:90, 10)
mat2
mat2[sample(1:length(mat2), 50, replace = FALSE)] <- NA
mat2

# Exercício 8 - Para a matriz abaixo, calcule a soma por linha e por coluna
mat1 <- matrix(c(1:50), nrow = 5, ncol = 5, byrow = T)
mat1
apply(mat1, 1, sum)
apply(mat1, 2, sum)

# Exercício 9 - Para o vetor abaixo, ordene os valores em ordem crescente
# IMP! Indexação ordenada
a <- c(100, 10, 10000, 1000)
a
sort(a)
a[order(a)] # mais rápido
order(a)
b <- replicate(20000, runif(2000))
system.time(sort(b))
system.time(b[order(b)]) # IMP

# # Exercício 10 - Imprima no console todos os elementos da matriz abaixo que forem maiores que 15
mat1 <- matrix(c(1:50), nrow = 5, ncol = 5, byrow = T)
mat1
mat1[mat1 > 15]

# Exercício extra - IMP!!
is_oddbit <- function(n){
  return( bitwAnd(n,1) == 0)
}
is_oddbit2 <- function(n){
  return( as.integer(as.raw(n) & as.raw(1)) == 0)
}
is_oddcommon <- function(n){
  return( n%%2 == 0)
}
system.time(lapply(5:500000, is_oddbit))
system.time(lapply(5:500000, is_oddbit2))
system.time(lapply(5:500000, is_oddcommon))