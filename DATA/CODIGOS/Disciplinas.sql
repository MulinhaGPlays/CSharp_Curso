select * from Disciplinas
where DISID=''

delete Disciplinas
where DISID=''

select d.*,d.DISDESCRIACAO+' '+ d.CURSOID as 'Completo' from Disciplinas d
where ISNUMERIC(d.CURSOID)=0

update Disciplinas
set DISDESCRIACAO=DISDESCRIACAO + ' ' +CURSOID
where ISNUMERIC(CURSOID)=0

update Disciplinas
set CURSOID=null
where ISNUMERIC(CURSOID)=0

select * from Disciplinas
order by CURSOID desc

update Disciplinas
set DISCH= null

alter table Disciplinas
ALTER COLUMN DISID int;

alter table Disciplinas		
ALTER COLUMN CURSOID int;

alter table Disciplinas
ALTER COLUMN disch int;