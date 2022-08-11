alter table CURSOS
alter column cursoid int not null
go
alter table CURSOS
add constraint PK_cursoid primary key (cursoid);
go
create sequence numerarCursoid start with 15 INCREMENT BY 1
go
alter table CURSOS
add constraint seqIdcurso
default next value for numerarCursoid
for cursoid

select * from CURSOS

INSERT CURSOS (CURSODESCRICAO, CURSOCODHABILIDADE, CURSOMODALIDADE)
VALUES ('JAVA JAVINHA',  'QJAVA', 'DOIDO')

alter table discilpinas
add foreign key (cursoid) references cursos(cursoid);