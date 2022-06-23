---
title: Trouble Shooting
keywords:
  - Guide
  - Tutorial
  - Bugs
---

# Trouble Shooting para o curso R com Azure da DSA

Este markdown contém os principais problemas encontrados no decorrer do curso R com Azure da DSA para facilitar buscas futuras quando na recorrência de algum deles.


### Erros no RStudio

1. Problemas com o diretório padrão e encoding

O problema aparentemente foi originado pela utilização de nome de usuário do Windows com acento.

**Mensagens de erro do terminal do RStudio e soluções**

> `Error in nchar(homeDir) : invalid multibyte string, element 1` e erro na instalação de pacotes


    >> Solução:
    Alterar a versão do R 4.2.0 para a R 4.1.3
    Tentei essa, mas não funcinou:
    `Sys.setlocale("LC_ALL","pt_BR.UTF-8")`

    [Error in nchar(content) : invalid multibyte string, element 1 | (I/O) com R: formatos diferentes de entrada e saída | Alura - Cursos online de tecnologia](https://cursos.alura.com.br/forum/topico-error-in-nchar-content-invalid-multibyte-string-element-1-109789)

> Alterar o diretório de `library` dos pacotes:

    >> Solução:
        myPaths <- .libPaths()
        myPaths <- c(myPaths, ‘C:/CustomR’)
        .libPaths(myPaths)  # add new path
    
   
           ## Making Your Library Changes Permanent

        Finally, you many have noticed that the steps above only last for the current R session. To make the changes permanent, you will need to change the Rprofile file for your instance of R/RStudio. This is a little tricky if you have multiple version of R running. To determine what you are interested in and where to go, do the following:

        Run the Tools -> Global Options menu in RStudio. You should be in the General tab. Take note of the **R version** path:

        ![General Options](https://cdn.accelebrate.com/images/library/how-to-articles/r-rstudio-library/r-version.png "General Options")  

        Navigate to the ./library/base/R path beneath it and find the **Rprofile** file, like in this case:

        ![Rprofile](https://cdn.accelebrate.com/images/library/how-to-articles/r-rstudio-library/rprofile.png "Rprofile")  

        Open up this file in a standard text editor. It is the startup file used by R to handle global settings and is run every time you launch an instance. To avoid breaking any existing code, I find it best to put custom code at the bottom. Use the code above to ensure the correct libraries are inserted into your environment at startup. For the example above, I used this:

        ![code snippet](https://cdn.accelebrate.com/images/library/how-to-articles/r-rstudio-library/r-code.png "code snippet")  

        Restart RStudio (as administrator is necessary) and check out your new settings.
        ![new install package settings](https://cdn.accelebrate.com/images/library/how-to-articles/r-rstudio-library/install-package-dialog6.png "new install package settings")
        ![new install package settings](https://cdn.accelebrate.com/images/library/how-to-articles/r-rstudio-library/install-package-dialog6.png "new install package settings")

   >>> Source: 
    [Rstudio: Changing the Default Library (accelebrate.com)](https://www.accelebrate.com/library/how-to-articles/r-rstudio-library) 
    
> Alterar diretório temporário de download de pacotes:
>> Solução:
[How to change the storage directory of the downloaded binary packages when installing - General - RStudio Community](https://community.rstudio.com/t/how-to-change-the-storage-directory-of-the-downloaded-binary-packages-when-installing/38210)
