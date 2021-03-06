USE [master]
GO
/****** Object:  Database [MaisPraTi]    Script Date: 14/02/2021 16:42:16 ******/
CREATE DATABASE [MaisPraTi]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'MaisPraTi', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER\MSSQL\DATA\MaisPraTi.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'MaisPraTi_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER\MSSQL\DATA\MaisPraTi_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [MaisPraTi] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [MaisPraTi].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [MaisPraTi] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [MaisPraTi] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [MaisPraTi] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [MaisPraTi] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [MaisPraTi] SET ARITHABORT OFF 
GO
ALTER DATABASE [MaisPraTi] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [MaisPraTi] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [MaisPraTi] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [MaisPraTi] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [MaisPraTi] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [MaisPraTi] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [MaisPraTi] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [MaisPraTi] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [MaisPraTi] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [MaisPraTi] SET  DISABLE_BROKER 
GO
ALTER DATABASE [MaisPraTi] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [MaisPraTi] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [MaisPraTi] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [MaisPraTi] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [MaisPraTi] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [MaisPraTi] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [MaisPraTi] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [MaisPraTi] SET RECOVERY FULL 
GO
ALTER DATABASE [MaisPraTi] SET  MULTI_USER 
GO
ALTER DATABASE [MaisPraTi] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [MaisPraTi] SET DB_CHAINING OFF 
GO
ALTER DATABASE [MaisPraTi] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [MaisPraTi] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [MaisPraTi] SET DELAYED_DURABILITY = DISABLED 
GO
EXEC sys.sp_db_vardecimal_storage_format N'MaisPraTi', N'ON'
GO
ALTER DATABASE [MaisPraTi] SET QUERY_STORE = OFF
GO
USE [MaisPraTi]
GO
/****** Object:  Table [dbo].[TabelaAlunos]    Script Date: 14/02/2021 16:42:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TabelaAlunos](
	[MatriculaAluno] [int] IDENTITY(1,1) NOT NULL,
	[NomeAluno] [varchar](50) NOT NULL,
	[Cpf] [int] NOT NULL,
	[DataNascimento] [date] NOT NULL,
	[Sexo] [varchar](50) NOT NULL,
	[Departamento] [int] NOT NULL,
	[Curso] [int] NOT NULL,
 CONSTRAINT [PK_TabelaAlunos] PRIMARY KEY CLUSTERED 
(
	[MatriculaAluno] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TabelaCursos]    Script Date: 14/02/2021 16:42:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TabelaCursos](
	[CodigoCurso] [int] IDENTITY(1,1) NOT NULL,
	[NomeCurso] [varchar](50) NOT NULL,
	[Tipo] [int] NOT NULL,
	[Departamento] [int] NOT NULL,
	[Coordenador] [varchar](50) NOT NULL,
	[ViceCoordenador] [varchar](50) NOT NULL,
 CONSTRAINT [PK_TabelaCursos] PRIMARY KEY CLUSTERED 
(
	[CodigoCurso] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TabelaDepartamentos]    Script Date: 14/02/2021 16:42:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TabelaDepartamentos](
	[CodigoDepartamento] [int] IDENTITY(1,1) NOT NULL,
	[NomeDepartamento] [varchar](50) NOT NULL,
	[Telefone] [int] NOT NULL,
	[Centro] [varchar](50) NOT NULL,
 CONSTRAINT [PK_TabelaDepartamentos] PRIMARY KEY CLUSTERED 
(
	[CodigoDepartamento] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TabelaDisciplinas]    Script Date: 14/02/2021 16:42:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TabelaDisciplinas](
	[CodigoDisciplina] [int] IDENTITY(1,1) NOT NULL,
	[NomeDisciplina] [varchar](50) NOT NULL,
	[Descricao] [varchar](100) NOT NULL,
	[NumeroDeCreditos] [int] NOT NULL,
	[Departamento] [int] NOT NULL,
 CONSTRAINT [PK_TabelaDisciplinas] PRIMARY KEY CLUSTERED 
(
	[CodigoDisciplina] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TabelaEnderecoAlunos]    Script Date: 14/02/2021 16:42:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TabelaEnderecoAlunos](
	[MatriculaAluno] [int] NOT NULL,
	[Rua] [varchar](50) NOT NULL,
	[Numero] [varchar](10) NOT NULL,
	[Complemento] [varchar](10) NOT NULL,
	[Cidade] [varchar](30) NOT NULL,
	[Cep] [int] NOT NULL,
	[UF] [varchar](2) NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TabelaMatriculas]    Script Date: 14/02/2021 16:42:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TabelaMatriculas](
	[CodigoMatricula] [int] NOT NULL,
	[CodigoOferta] [int] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TabelaOfertas]    Script Date: 14/02/2021 16:42:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TabelaOfertas](
	[CodigoOferta] [int] IDENTITY(1,1) NOT NULL,
	[CodigoProfessor] [int] NOT NULL,
	[CodigoDisciplina] [int] NOT NULL,
	[Horario] [time](7) NOT NULL,
 CONSTRAINT [PK_TabelaOfertas] PRIMARY KEY CLUSTERED 
(
	[CodigoOferta] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TabelaProfessores]    Script Date: 14/02/2021 16:42:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TabelaProfessores](
	[CodigoProfessor] [int] IDENTITY(1,1) NOT NULL,
	[NomeProfessor] [varchar](50) NOT NULL,
	[Cpf] [int] NOT NULL,
	[Departamento] [int] NOT NULL,
	[Telefone] [int] NOT NULL,
 CONSTRAINT [PK_TabelaProfessores] PRIMARY KEY CLUSTERED 
(
	[CodigoProfessor] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TabelaTelefoneAlunos]    Script Date: 14/02/2021 16:42:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TabelaTelefoneAlunos](
	[MatriculaAluno] [int] NOT NULL,
	[Telefone] [int] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TabelaTipoCurso]    Script Date: 14/02/2021 16:42:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TabelaTipoCurso](
	[CodigoTipoCurso] [int] IDENTITY(1,1) NOT NULL,
	[TipoCurso] [varchar](50) NOT NULL,
 CONSTRAINT [PK_TabelaTipoCurso] PRIMARY KEY CLUSTERED 
(
	[CodigoTipoCurso] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[TabelaAlunos]  WITH CHECK ADD  CONSTRAINT [FK_TabelaAlunos_TabelaCursos] FOREIGN KEY([Curso])
REFERENCES [dbo].[TabelaCursos] ([CodigoCurso])
GO
ALTER TABLE [dbo].[TabelaAlunos] CHECK CONSTRAINT [FK_TabelaAlunos_TabelaCursos]
GO
ALTER TABLE [dbo].[TabelaAlunos]  WITH CHECK ADD  CONSTRAINT [FK_TabelaAlunos_TabelaDepartamentos] FOREIGN KEY([Departamento])
REFERENCES [dbo].[TabelaDepartamentos] ([CodigoDepartamento])
GO
ALTER TABLE [dbo].[TabelaAlunos] CHECK CONSTRAINT [FK_TabelaAlunos_TabelaDepartamentos]
GO
ALTER TABLE [dbo].[TabelaCursos]  WITH CHECK ADD  CONSTRAINT [FK_TabelaCursos_TabelaDepartamentos] FOREIGN KEY([Departamento])
REFERENCES [dbo].[TabelaDepartamentos] ([CodigoDepartamento])
GO
ALTER TABLE [dbo].[TabelaCursos] CHECK CONSTRAINT [FK_TabelaCursos_TabelaDepartamentos]
GO
ALTER TABLE [dbo].[TabelaCursos]  WITH CHECK ADD  CONSTRAINT [FK_TabelaCursos_TabelaTipoCurso] FOREIGN KEY([Tipo])
REFERENCES [dbo].[TabelaTipoCurso] ([CodigoTipoCurso])
GO
ALTER TABLE [dbo].[TabelaCursos] CHECK CONSTRAINT [FK_TabelaCursos_TabelaTipoCurso]
GO
ALTER TABLE [dbo].[TabelaDisciplinas]  WITH CHECK ADD  CONSTRAINT [FK_TabelaDisciplinas_TabelaDepartamentos] FOREIGN KEY([Departamento])
REFERENCES [dbo].[TabelaDepartamentos] ([CodigoDepartamento])
GO
ALTER TABLE [dbo].[TabelaDisciplinas] CHECK CONSTRAINT [FK_TabelaDisciplinas_TabelaDepartamentos]
GO
ALTER TABLE [dbo].[TabelaEnderecoAlunos]  WITH CHECK ADD  CONSTRAINT [FK_TabelaEnderecoAlunos_TabelaAlunos] FOREIGN KEY([MatriculaAluno])
REFERENCES [dbo].[TabelaAlunos] ([MatriculaAluno])
GO
ALTER TABLE [dbo].[TabelaEnderecoAlunos] CHECK CONSTRAINT [FK_TabelaEnderecoAlunos_TabelaAlunos]
GO
ALTER TABLE [dbo].[TabelaMatriculas]  WITH CHECK ADD  CONSTRAINT [FK_TabelaMatriculas_TabelaAlunos] FOREIGN KEY([CodigoMatricula])
REFERENCES [dbo].[TabelaAlunos] ([MatriculaAluno])
GO
ALTER TABLE [dbo].[TabelaMatriculas] CHECK CONSTRAINT [FK_TabelaMatriculas_TabelaAlunos]
GO
ALTER TABLE [dbo].[TabelaMatriculas]  WITH CHECK ADD  CONSTRAINT [FK_TabelaMatriculas_TabelaOfertas] FOREIGN KEY([CodigoOferta])
REFERENCES [dbo].[TabelaOfertas] ([CodigoOferta])
GO
ALTER TABLE [dbo].[TabelaMatriculas] CHECK CONSTRAINT [FK_TabelaMatriculas_TabelaOfertas]
GO
ALTER TABLE [dbo].[TabelaOfertas]  WITH CHECK ADD  CONSTRAINT [FK_TabelaOfertas_TabelaDisciplinas] FOREIGN KEY([CodigoDisciplina])
REFERENCES [dbo].[TabelaDisciplinas] ([CodigoDisciplina])
GO
ALTER TABLE [dbo].[TabelaOfertas] CHECK CONSTRAINT [FK_TabelaOfertas_TabelaDisciplinas]
GO
ALTER TABLE [dbo].[TabelaOfertas]  WITH CHECK ADD  CONSTRAINT [FK_TabelaOfertas_TabelaProfessores] FOREIGN KEY([CodigoProfessor])
REFERENCES [dbo].[TabelaProfessores] ([CodigoProfessor])
GO
ALTER TABLE [dbo].[TabelaOfertas] CHECK CONSTRAINT [FK_TabelaOfertas_TabelaProfessores]
GO
ALTER TABLE [dbo].[TabelaProfessores]  WITH CHECK ADD  CONSTRAINT [FK_TabelaProfessores_TabelaDepartamentos] FOREIGN KEY([Departamento])
REFERENCES [dbo].[TabelaDepartamentos] ([CodigoDepartamento])
GO
ALTER TABLE [dbo].[TabelaProfessores] CHECK CONSTRAINT [FK_TabelaProfessores_TabelaDepartamentos]
GO
ALTER TABLE [dbo].[TabelaTelefoneAlunos]  WITH CHECK ADD  CONSTRAINT [FK_TabelaTelefoneAlunos_TabelaAlunos] FOREIGN KEY([MatriculaAluno])
REFERENCES [dbo].[TabelaAlunos] ([MatriculaAluno])
GO
ALTER TABLE [dbo].[TabelaTelefoneAlunos] CHECK CONSTRAINT [FK_TabelaTelefoneAlunos_TabelaAlunos]
GO
USE [master]
GO
ALTER DATABASE [MaisPraTi] SET  READ_WRITE 
GO
