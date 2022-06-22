# Script para concatenar todos os scripts da DSA
setwd("Seu_diretorio_raiz_aqui")
getwd()

# Algoritmo
# Criar um arquivo em branco - Full
# Listar os diretórios na raiz - list.dirs()
# Para cada diretório, listar os arquivos (list.files | list_files_with_exts(path, "R"))
# Para cada arquivo, verificar se ele tem extensão R - file_ext(list.files(path)[1]) == "R"
# Se o arquivo tiver extensão .R, checar a linha com o script "getwd()" - armazenar l0 - str_locate(ftxt, "getwd()")
# Checar a última linha escrita - armazenar lf - nchar()
# Da linha l0 a lf, copiar o conteúdo concatenando no arquivo Full


# Libraries
#install.packages(c("tools", "tidyverse", "readtext", "stringr", "readr"))
library(tools)
library(tidyverse)
require(readtext)
library(stringr)
library(readr)

# Cria o arquivo Full, deletando se já existir
file_name <- paste(getwd(), "/FullScript_DSA_Azure_R.R", sep = "")
if (file.exists(file_name)){
  file.remove(file_name)
  file.create(file_name)
} else {
  file.create(file_name)
}

# Percorre a lista dos subdiretórios
for (d in list.dirs()[2:length(list.dirs())]){
  path = paste(getwd(), d, sep = "")
  
  # Percorre a lista de arquivos com extensão R nos subdiretórios
  for (f in list_files_with_exts(path, exts = "R")){
    
    # Lê o script R convertendo em vetor de tamanho 1
    ftxt <- read_file(f)
    # Verifica se o arquivo é o do curso R com Azure
    if (!is.na(str_locate(ftxt, "https://support")[1])){
      path_f = paste("# ", f, "\r\n# Data Science Academy - todos os direitos reservados",
                     sep = "")
      
      # Elimina o cabeçalho do script - ajustar caso alterem o cabeçalho ao longo do curso
      fcat <- paste(path_f, substr(ftxt, 
                                   start = str_locate(ftxt, "getwd()")[2]+3, 
                                   stop = nchar(ftxt)), sep = "\r\n")
      
      # Faz append do código no arquivo Full
      write_file(fcat, file_name, append = TRUE)}
  }
}