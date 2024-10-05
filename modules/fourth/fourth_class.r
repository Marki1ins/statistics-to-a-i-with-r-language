library(jsonlite)

df <- read.csv("D:/data.csv", sep = ";", dec = ",")

df <- fromJSON("http://educacao.dadosabertosbr.com/api/escolas/buscaavancada?situacaoFuncionamento=1&energiaInexistente=on&aguaInexistente=on&esgotoInexistente=on&cozinha=on")