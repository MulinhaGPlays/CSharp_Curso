--Inserindo areas masas
insert Area values('TI')
insert Area values('Redes')

--Inserindo escrav- colaboradores
insert Colaborador values('Rhuan', null, 1)
insert Colaborador (COLNOME, AREID) values('Antonio', 2)
insert Colaborador (COLNOME, COLCARGO, AREID) values ('seila', 'bababooey', 1)

--vendo
select C.COLID 'Código',
	   C.COLNOME 'Nome',
	   C.COLCARGO 'Cargo',
	   A.AREDESCRICAO 'Área'
from Colaborador C JOIN
	 Area A on C.AREID=A.AREID

--inserindo produto
insert produto (PRODESCRICAO, PROMINIMO,PROMAXIMO, PROESTOQUE)
values ('Ratinho',1,20,40)
insert Produto (PRODESCRICAO, PROMINIMO, PROMAXIMO, PROESTOQUE)
values ('Arroz', 3, 10, 5)
insert Produto (PRODESCRICAO, PROMINIMO, PROMAXIMO, PROESTOQUE)
values ('Feijão', 5, 20, 12)
insert Produto (PRODESCRICAO, PROMINIMO, PROMAXIMO, PROESTOQUE)
values ('Macarrão', 6, 22, 14)

--inserindo entrada
Insert ENTRADA (ENTDATA,ENTORIGEM, ENTNUMERONOTA, ENTOBSERVACAO)
       VALUES ('2022-27-07', 'Padrão', '001454', 'Menos 1 para Jhonas. Anote ai Ryandra')
Insert ENTRADA (ENTDATA,ENTORIGEM, ENTNUMERONOTA, ENTOBSERVACAO)
       VALUES ('2022-27-07', 'Padrão', '002555', 'A NOTA É MINHA')
Insert ENTRADA (ENTDATA,ENTORIGEM, ENTNUMERONOTA, ENTOBSERVACAO)
       VALUES ('2022-27-06', 'Padrão', '002555', 'A NOTA É MINHA')
Insert ENTRADA (ENTDATA,ENTORIGEM, ENTNUMERONOTA, ENTOBSERVACAO)
       VALUES ('2022-27-07', 'Padrão', '001454', 'Menos 1 para Jhonas. Anote ai Ryandra')
Insert ENTRADA (ENTDATA,ENTORIGEM, ENTNUMERONOTA, ENTOBSERVACAO)
       VALUES ('2022-27-07', 'Padrão', '002555', 'A NOTA É MINHA')
Insert ENTRADA (ENTDATA,ENTORIGEM, ENTNUMERONOTA, ENTOBSERVACAO)
       VALUES ('2022-27-06', 'Padrão', '002555', 'A NOTA É MINHA')
Insert ENTRADA (ENTDATA,ENTORIGEM, ENTNUMERONOTA, ENTOBSERVACAO)
       VALUES ('2022-30-01', 'Padrão', '0024444', 'NOTA 4')

--notas depois de janeiro de 2022

select * from ENTRADA where ENTDATA>'2022-31-01'

--notas do mes de junho

select * from ENTRADA where ENTDATA>'2022-01-06' and ENTDATA<= '2022-30-06'

select * from Produto
select * from Entrada

--inserindo intes entrada
insert ITENSENTRADA (ENTID, PROID, ITEQUANTIDADE, ITEPRECO)
	values (2,1,10,9.50)
insert ITENSENTRADA (ENTID, PROID, ITEQUANTIDADE, ITEPRECO)
	values (2,3,5,2.50)

select I.ITEID 'ID',
       E.ENTDATA 'Data', 
	   P.PRODESCRICAO 'Produto', 
	   I.ITEQUANTIDADE 'Quantidade', 
	   I.ITEPRECO 'Preço', 
	   I.ITETOTAL 'Total' 
from ItensEntrada I 
JOIN Entrada E on I.ENTID=E.ENTID
JOIN Produto P on I.PROID=P.PROID

--custo da nota de entrada número 1
select count(i.iteid) 'Qtd de Itens', sum(i.itetotal) 'Total da Nota' from ItensEntrada
join Entrada E on I.ENTID=E.ENTID
join ItensEntrada I on E.ENTID=I.ENTID
where i.entid=2

--inserindo saidas
insert Saida (SAIDADATA, SAIDAOBSERVACAO, COLID) values ('2022-20-01', null, 1)
insert Saida values ('2022-05-07', 'Teste 2', 2)

--inserindo Itens Saida
insert ItensSaida (ITSQUANTIDADE, SAIDAID, PROID)
	    values (2,1,3)
insert ItensSaida (ITSQUANTIDADE, SAIDAID, PROID)
	    values (2,1,4)
insert ItensSaida (ITSQUANTIDADE, SAIDAID, PROID)
	    values (10,2,2)
go
select * from Produto
select * from ItensSaida

--select Itens saida :)
select I.ITSID 'ID',
	   I.ITSQUANTIDADE 'Quantidade',
	   I.SAIDAID 'ID Saida',
	   P.PRODESCRICAO 'Produto',
	   S.SAIDADATA 'Data da saída'
from ItensSaida I
join Produto P on I.PROID = P.PROID
join Saida S on I.SAIDAID = S.SAIDAID
