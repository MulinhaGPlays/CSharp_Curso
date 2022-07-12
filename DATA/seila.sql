use bdTarefas;
go
CREATE TABLE Pessoa {
  PESID int not null identity (1,1) primary key,
  NOME VARCHAR(100) not null
}
go
CREATE TABLE Tarefa {
  TARID int not null identity (1,1) primary key,
  TARDEDESCRICAO VARCHAR(100) not null,
  TARDATA DATETIME not null DEFAULT GETDATE(),
  TARFEITO bit not null default 0,
  PESID int not null,
  FOREIGN KEY (PESID) REFERENCES pessoa (PESID)
}