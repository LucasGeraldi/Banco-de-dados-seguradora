# Banco-de-dados-seguradora
Aula de banco de dados FATEC ITAPIRA ATIVIDADE CRIAR UM BANCO DE DADOS 

Tabela Cliente
Tabela Clientes:
Chave Primária:CodClienteColunas
obrigatórias:Nome, CPF, TelefoneCelular
Colunas Únicas:CPF, TelefoneCelular
Coluna com valor padrão:Cidade –Valor Padrão ‘Itapira’

Tabela Apólice:
Chave Primária:CodApolice
Chave Estrangeira:Cliente_CodClienteCarro_CodCarroColunas
Obrigatória:TodasColuna 
com checagem:DataInicioVigencia: Maior que a data atual

Tabela Carro:
Chave Primária:CodCarro

Tabela Sinistro:
Chave PrimáriaComposta:CodSinistro Carro_CodCarroChave 
Estrangeira:Carro_CodCarro

