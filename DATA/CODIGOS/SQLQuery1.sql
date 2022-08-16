USE [master]
GO
/****** Object:  Database [bdCursos]    Script Date: 16/08/2022 13:41:07 ******/
CREATE DATABASE [bdCursos]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'bdCursos', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.SENAI\MSSQL\DATA\bdCursos.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'bdCursos_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.SENAI\MSSQL\DATA\bdCursos_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [bdCursos].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [bdCursos] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [bdCursos] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [bdCursos] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [bdCursos] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [bdCursos] SET ARITHABORT OFF 
GO
ALTER DATABASE [bdCursos] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [bdCursos] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [bdCursos] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [bdCursos] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [bdCursos] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [bdCursos] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [bdCursos] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [bdCursos] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [bdCursos] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [bdCursos] SET  DISABLE_BROKER 
GO
ALTER DATABASE [bdCursos] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [bdCursos] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [bdCursos] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [bdCursos] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [bdCursos] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [bdCursos] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [bdCursos] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [bdCursos] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [bdCursos] SET  MULTI_USER 
GO
ALTER DATABASE [bdCursos] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [bdCursos] SET DB_CHAINING OFF 
GO
ALTER DATABASE [bdCursos] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [bdCursos] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [bdCursos] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [bdCursos] SET QUERY_STORE = OFF
GO
USE [bdCursos]
GO
USE [bdCursos]
GO
/****** Object:  Sequence [dbo].[numerarCursoid]    Script Date: 16/08/2022 13:41:07 ******/
CREATE SEQUENCE [dbo].[numerarCursoid] 
 AS [bigint]
 START WITH 15
 INCREMENT BY 1
 MINVALUE -9223372036854775808
 MAXVALUE 9223372036854775807
 CACHE 
GO
/****** Object:  Table [dbo].[Cursos]    Script Date: 16/08/2022 13:41:07 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Cursos](
	[CURSOID] [int] NOT NULL,
	[CURSODESCRICAO] [varchar](100) NULL,
	[CURSOCODHABILIDADE] [varchar](100) NULL,
	[CURSOMODALIDADE] [varchar](100) NULL,
 CONSTRAINT [PK_cusoid] PRIMARY KEY CLUSTERED 
(
	[CURSOID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Disciplinas]    Script Date: 16/08/2022 13:41:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Disciplinas](
	[DISID] [int] NULL,
	[DISDESCRIACAO] [varchar](500) NULL,
	[CURSOID] [int] NULL,
	[DISCH] [int] NULL
) ON [PRIMARY]
GO
INSERT [dbo].[Cursos] ([CURSOID], [CURSODESCRICAO], [CURSOCODHABILIDADE], [CURSOMODALIDADE]) VALUES (1, N'ASSISTENTE T�CNICO EM TECNOLOGIA DA INFORMA��O', N'QPR-101', N'Qualifica��o Profissional')
INSERT [dbo].[Cursos] ([CURSOID], [CURSODESCRICAO], [CURSOCODHABILIDADE], [CURSOMODALIDADE]) VALUES (3, N'AUXILIAR DE PADEIRO', N'QPR-013', N'Qualifica��o Profissional')
INSERT [dbo].[Cursos] ([CURSOID], [CURSODESCRICAO], [CURSOCODHABILIDADE], [CURSOMODALIDADE]) VALUES (4, N'ELETRICISTA DE REDE DE DISTRIBUICAO DE ENERGIA ELETRICAL', N'QPR-042', N'Qualifica��o Profissional')
INSERT [dbo].[Cursos] ([CURSOID], [CURSODESCRICAO], [CURSOCODHABILIDADE], [CURSOMODALIDADE]) VALUES (5, N'INFORMATICA BASICA', N'QPR-052', N'Qualifica��o Profissional')
INSERT [dbo].[Cursos] ([CURSOID], [CURSODESCRICAO], [CURSOCODHABILIDADE], [CURSOMODALIDADE]) VALUES (7, N'LOGICA DE PROGRAMACAO', N'INP-057', N'Inicia��o Profissional')
INSERT [dbo].[Cursos] ([CURSOID], [CURSODESCRICAO], [CURSOCODHABILIDADE], [CURSOMODALIDADE]) VALUES (9, N'METROLOGIA', N'INP-063', N'Inicia��o Profissional')
INSERT [dbo].[Cursos] ([CURSOID], [CURSODESCRICAO], [CURSOCODHABILIDADE], [CURSOMODALIDADE]) VALUES (10, N'OFICINA DE LANCHES VEGANOS', N'INP-092', N'Inicia��o Profissional')
INSERT [dbo].[Cursos] ([CURSOID], [CURSODESCRICAO], [CURSOCODHABILIDADE], [CURSOMODALIDADE]) VALUES (13, N'TECNICO EM REDES DE COMPUTADORES', N'TEC-037', N'Habilita��o T�cnica de N�vel M�dio')
INSERT [dbo].[Cursos] ([CURSOID], [CURSODESCRICAO], [CURSOCODHABILIDADE], [CURSOMODALIDADE]) VALUES (14, N'T�CNICO EM ADMINISTRA��O', N'TEC-006', N'Habilita��o T�cnica de N�vel M�dio')
INSERT [dbo].[Cursos] ([CURSOID], [CURSODESCRICAO], [CURSOCODHABILIDADE], [CURSOMODALIDADE]) VALUES (15, N'JAVA JAVINHA', N'QJAVA', N'DOIDO')
INSERT [dbo].[Disciplinas] ([DISID], [DISDESCRIACAO], [CURSOID], [DISCH]) VALUES (69, N'ADMINISTRA��O DE SISTEMA OPERACIONAL DE REDE ABERTA - LINUX', 1, NULL)
INSERT [dbo].[Disciplinas] ([DISID], [DISDESCRIACAO], [CURSOID], [DISCH]) VALUES (70, N'ADMINISTRA��O DE SISTEMA OPERACIONAL DE REDE PROPRIET�RIO - WINDOWS', 1, NULL)
INSERT [dbo].[Disciplinas] ([DISID], [DISDESCRIACAO], [CURSOID], [DISCH]) VALUES (71, N'ADMINISTRA��O MERCADOL�GICA E PROCESSOS COMERCIAIS', 14, NULL)
INSERT [dbo].[Disciplinas] ([DISID], [DISDESCRIACAO], [CURSOID], [DISCH]) VALUES (72, N'ARQUITETURA DE REDES DE COMPUTADORES', 13, NULL)
INSERT [dbo].[Disciplinas] ([DISID], [DISDESCRIACAO], [CURSOID], [DISCH]) VALUES (73, N'ASPECTOS COMPORTAMENTAIS E O CLIENTE', 4, NULL)
INSERT [dbo].[Disciplinas] ([DISID], [DISDESCRIACAO], [CURSOID], [DISCH]) VALUES (74, N'CABEAMENTO ESTRUTURADO E INSTALA��O DE REDES LOCAIS', 1, NULL)
INSERT [dbo].[Disciplinas] ([DISID], [DISDESCRIACAO], [CURSOID], [DISCH]) VALUES (75, N'COMANDOS ELETRICOS', 4, NULL)
INSERT [dbo].[Disciplinas] ([DISID], [DISDESCRIACAO], [CURSOID], [DISCH]) VALUES (76, N'COMPETENCIAS PROFISSIONAIS', 13, NULL)
INSERT [dbo].[Disciplinas] ([DISID], [DISDESCRIACAO], [CURSOID], [DISCH]) VALUES (77, N'COMUNICA��O CORPORATIVA', 1, NULL)
INSERT [dbo].[Disciplinas] ([DISID], [DISDESCRIACAO], [CURSOID], [DISCH]) VALUES (78, N'COMUNICACAO EMPRESARIAL', 14, NULL)
INSERT [dbo].[Disciplinas] ([DISID], [DISDESCRIACAO], [CURSOID], [DISCH]) VALUES (79, N'COMUTACAO E INTERCONEXAO DE REDES', 13, NULL)
INSERT [dbo].[Disciplinas] ([DISID], [DISDESCRIACAO], [CURSOID], [DISCH]) VALUES (80, N'CONEXOES', 4, NULL)
INSERT [dbo].[Disciplinas] ([DISID], [DISDESCRIACAO], [CURSOID], [DISCH]) VALUES (81, N'CONTABILIDADE COMERCIAL', 14, NULL)
INSERT [dbo].[Disciplinas] ([DISID], [DISDESCRIACAO], [CURSOID], [DISCH]) VALUES (82, N'COORDENA��O DE EQUIPES', 14, NULL)
INSERT [dbo].[Disciplinas] ([DISID], [DISDESCRIACAO], [CURSOID], [DISCH]) VALUES (83, N'DESENVOLVIMENTO DE PROJETO', 14, NULL)
INSERT [dbo].[Disciplinas] ([DISID], [DISDESCRIACAO], [CURSOID], [DISCH]) VALUES (84, N'DOCUMENTACAO TECNICA', 14, NULL)
INSERT [dbo].[Disciplinas] ([DISID], [DISDESCRIACAO], [CURSOID], [DISCH]) VALUES (85, N'DOCUMENTA��O T�CNICA', 13, NULL)
INSERT [dbo].[Disciplinas] ([DISID], [DISDESCRIACAO], [CURSOID], [DISCH]) VALUES (86, N'ELETRICIDADE BASICA', 4, NULL)
INSERT [dbo].[Disciplinas] ([DISID], [DISDESCRIACAO], [CURSOID], [DISCH]) VALUES (87, N'ELETRICISTA PADRONISTA', 4, NULL)
INSERT [dbo].[Disciplinas] ([DISID], [DISDESCRIACAO], [CURSOID], [DISCH]) VALUES (88, N'FERRAMENTAS DE ESCRITORIO', 5, NULL)
INSERT [dbo].[Disciplinas] ([DISID], [DISDESCRIACAO], [CURSOID], [DISCH]) VALUES (89, N'FERRAMENTAS DE ESCRIT�RIO', 1, NULL)
INSERT [dbo].[Disciplinas] ([DISID], [DISDESCRIACAO], [CURSOID], [DISCH]) VALUES (90, N'FERRAMENTAS DE INTERNET', 5, NULL)
INSERT [dbo].[Disciplinas] ([DISID], [DISDESCRIACAO], [CURSOID], [DISCH]) VALUES (91, N'FUNDAMENTOS DE ADMINISTRA��O', 14, NULL)
INSERT [dbo].[Disciplinas] ([DISID], [DISDESCRIACAO], [CURSOID], [DISCH]) VALUES (92, N'FUNDAMENTOS DE ELETROELETRONICA', 13, NULL)
INSERT [dbo].[Disciplinas] ([DISID], [DISDESCRIACAO], [CURSOID], [DISCH]) VALUES (93, N'FUNDAMENTOS DE INFORMATICA', 13, NULL)
INSERT [dbo].[Disciplinas] ([DISID], [DISDESCRIACAO], [CURSOID], [DISCH]) VALUES (94, N'FUNDAMENTOS DE NR 10', 4, NULL)
INSERT [dbo].[Disciplinas] ([DISID], [DISDESCRIACAO], [CURSOID], [DISCH]) VALUES (95, N'FUNDAMENTOS DE SEGURANCA DO TRABALHO EM ALTURA - NR 35', 4, NULL)
INSERT [dbo].[Disciplinas] ([DISID], [DISDESCRIACAO], [CURSOID], [DISCH]) VALUES (96, N'FUNDAMENTOS DE TECNOLOGIA DA INFORMACAO', 13, NULL)
INSERT [dbo].[Disciplinas] ([DISID], [DISDESCRIACAO], [CURSOID], [DISCH]) VALUES (97, N'FUNDAMENTOS DO DIREITO EMPRESARIAL ', NULL, NULL)
INSERT [dbo].[Disciplinas] ([DISID], [DISDESCRIACAO], [CURSOID], [DISCH]) VALUES (98, N'GEST�O AMBIENTAL E DA QUALIDADE ', NULL, NULL)
INSERT [dbo].[Disciplinas] ([DISID], [DISDESCRIACAO], [CURSOID], [DISCH]) VALUES (99, N'GESTAO DA PRODUCAO ', NULL, NULL)
INSERT [dbo].[Disciplinas] ([DISID], [DISDESCRIACAO], [CURSOID], [DISCH]) VALUES (100, N'GEST�O DE ATIVOS DE REDES ', NULL, NULL)
INSERT [dbo].[Disciplinas] ([DISID], [DISDESCRIACAO], [CURSOID], [DISCH]) VALUES (101, N'GESTAO DE CUSTOS ', NULL, NULL)
INSERT [dbo].[Disciplinas] ([DISID], [DISDESCRIACAO], [CURSOID], [DISCH]) VALUES (102, N'INFORM�TICA APLICADA ', NULL, NULL)
INSERT [dbo].[Disciplinas] ([DISID], [DISDESCRIACAO], [CURSOID], [DISCH]) VALUES (103, N'INFRAESTRUTURA DE REDES LAN E WAN ', NULL, NULL)
INSERT [dbo].[Disciplinas] ([DISID], [DISDESCRIACAO], [CURSOID], [DISCH]) VALUES (104, N'LEITURA E COMUNICA��O ', NULL, NULL)
INSERT [dbo].[Disciplinas] ([DISID], [DISDESCRIACAO], [CURSOID], [DISCH]) VALUES (105, N'LOGICA DE PROGRAMACAO ', NULL, NULL)
INSERT [dbo].[Disciplinas] ([DISID], [DISDESCRIACAO], [CURSOID], [DISCH]) VALUES (106, N'MATEM�TICA APLICADA ', NULL, NULL)
INSERT [dbo].[Disciplinas] ([DISID], [DISDESCRIACAO], [CURSOID], [DISCH]) VALUES (107, N'METROLOGIA ', NULL, NULL)
INSERT [dbo].[Disciplinas] ([DISID], [DISDESCRIACAO], [CURSOID], [DISCH]) VALUES (108, N'MODELO DE NEG�CIOS DA TECNOLOGIA DA INFORMA��O ', NULL, NULL)
INSERT [dbo].[Disciplinas] ([DISID], [DISDESCRIACAO], [CURSOID], [DISCH]) VALUES (109, N'MONITORAMENTO E GERENCIAMENTO DE REDES ', NULL, NULL)
INSERT [dbo].[Disciplinas] ([DISID], [DISDESCRIACAO], [CURSOID], [DISCH]) VALUES (110, N'MONTAGEM DE REDES ELETRICAS ', NULL, NULL)
INSERT [dbo].[Disciplinas] ([DISID], [DISDESCRIACAO], [CURSOID], [DISCH]) VALUES (111, N'MONTAGEM E MANUTEN��O DE COMPUTADORES ', NULL, NULL)
INSERT [dbo].[Disciplinas] ([DISID], [DISDESCRIACAO], [CURSOID], [DISCH]) VALUES (112, N'NORMAS E PROCEDIMENTOS ', NULL, NULL)
INSERT [dbo].[Disciplinas] ([DISID], [DISDESCRIACAO], [CURSOID], [DISCH]) VALUES (113, N'OPERACAO EM REDES ELETRICAS ', NULL, NULL)
INSERT [dbo].[Disciplinas] ([DISID], [DISDESCRIACAO], [CURSOID], [DISCH]) VALUES (114, N'PLANEJAMENTO DE PRODUCAO NA PANIFICACAO ', NULL, NULL)
INSERT [dbo].[Disciplinas] ([DISID], [DISDESCRIACAO], [CURSOID], [DISCH]) VALUES (115, N'PLANEJAMENTO E ORGANIZA��O DO TRABALHO ', NULL, NULL)
INSERT [dbo].[Disciplinas] ([DISID], [DISDESCRIACAO], [CURSOID], [DISCH]) VALUES (116, N'PRATICA PROFISSIONAL SIMULADA ', NULL, NULL)
INSERT [dbo].[Disciplinas] ([DISID], [DISDESCRIACAO], [CURSOID], [DISCH]) VALUES (117, N'PROCESSOS DE RECURSOS HUMANOS ', NULL, NULL)
INSERT [dbo].[Disciplinas] ([DISID], [DISDESCRIACAO], [CURSOID], [DISCH]) VALUES (118, N'RACIOC�NIO L�GICO E AN�LISE DOS DADOS ', NULL, NULL)
INSERT [dbo].[Disciplinas] ([DISID], [DISDESCRIACAO], [CURSOID], [DISCH]) VALUES (119, N'REDES CONVERGENTES ', NULL, NULL)
INSERT [dbo].[Disciplinas] ([DISID], [DISDESCRIACAO], [CURSOID], [DISCH]) VALUES (120, N'REDES OPTICAS ', NULL, NULL)
INSERT [dbo].[Disciplinas] ([DISID], [DISDESCRIACAO], [CURSOID], [DISCH]) VALUES (121, N'RELA��ES S�CIO-PROFISSIONAIS  CIDADANIA E �TICA', NULL, NULL)
INSERT [dbo].[Disciplinas] ([DISID], [DISDESCRIACAO], [CURSOID], [DISCH]) VALUES (122, N'ROTINAS DE PESSOAL ', NULL, NULL)
INSERT [dbo].[Disciplinas] ([DISID], [DISDESCRIACAO], [CURSOID], [DISCH]) VALUES (123, N'SA�DE E SEGURAN�A DO TRABALHO ', NULL, NULL)
INSERT [dbo].[Disciplinas] ([DISID], [DISDESCRIACAO], [CURSOID], [DISCH]) VALUES (124, N'SEGURANCA DE REDES ', NULL, NULL)
INSERT [dbo].[Disciplinas] ([DISID], [DISDESCRIACAO], [CURSOID], [DISCH]) VALUES (125, N'SEGURAN�A DE REDES DE COMPUTADORES ', NULL, NULL)
INSERT [dbo].[Disciplinas] ([DISID], [DISDESCRIACAO], [CURSOID], [DISCH]) VALUES (126, N'SERVICOS DE REDE CORPORATIVA ', NULL, NULL)
INSERT [dbo].[Disciplinas] ([DISID], [DISDESCRIACAO], [CURSOID], [DISCH]) VALUES (127, N'SERVICOS DE REDE LOCAL ', NULL, NULL)
INSERT [dbo].[Disciplinas] ([DISID], [DISDESCRIACAO], [CURSOID], [DISCH]) VALUES (128, N'SERVIDORES DE REDES ', NULL, NULL)
INSERT [dbo].[Disciplinas] ([DISID], [DISDESCRIACAO], [CURSOID], [DISCH]) VALUES (129, N'SISTEMA OPERACIONAL ', NULL, NULL)
INSERT [dbo].[Disciplinas] ([DISID], [DISDESCRIACAO], [CURSOID], [DISCH]) VALUES (130, N'SISTEMAS OPERACIONAIS ', NULL, NULL)
INSERT [dbo].[Disciplinas] ([DISID], [DISDESCRIACAO], [CURSOID], [DISCH]) VALUES (131, N'TECNICAS DE FABRICACAO DE LANCHES VEGANOS ', NULL, NULL)
INSERT [dbo].[Disciplinas] ([DISID], [DISDESCRIACAO], [CURSOID], [DISCH]) VALUES (132, N'TECNOLOGIA DA INFORMACAO E COMUNICACAO ', NULL, NULL)
INSERT [dbo].[Disciplinas] ([DISID], [DISDESCRIACAO], [CURSOID], [DISCH]) VALUES (133, N'TECNOLOGIA E PROCESSO NA PANIFICACAO ', NULL, NULL)
INSERT [dbo].[Disciplinas] ([DISID], [DISDESCRIACAO], [CURSOID], [DISCH]) VALUES (134, N'TRABALHO DE CONCLUSAO DE CURSO - TCC ', NULL, NULL)
INSERT [dbo].[Disciplinas] ([DISID], [DISDESCRIACAO], [CURSOID], [DISCH]) VALUES (135, N'TRABALHO DE CONCLUS�O DE CURSO - TCC ', NULL, NULL)
INSERT [dbo].[Disciplinas] ([DISID], [DISDESCRIACAO], [CURSOID], [DISCH]) VALUES (136, N'WEB DESIGN ', NULL, NULL)
INSERT [dbo].[Disciplinas] ([DISID], [DISDESCRIACAO], [CURSOID], [DISCH]) VALUES (137, N'TESTE26', 7, NULL)
ALTER TABLE [dbo].[Cursos] ADD  CONSTRAINT [seqIdcurso]  DEFAULT (NEXT VALUE FOR [numerarCursoid]) FOR [CURSOID]
GO
ALTER TABLE [dbo].[Disciplinas]  WITH CHECK ADD FOREIGN KEY([CURSOID])
REFERENCES [dbo].[Cursos] ([CURSOID])
GO
USE [master]
GO
ALTER DATABASE [bdCursos] SET  READ_WRITE 
GO