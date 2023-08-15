--DDL

CREATE DATABASE Health_Clinic_Lucas;

USE Health_Clinic_Lucas

-- Tabela Genero
CREATE TABLE Genero (
    IDGenero INT PRIMARY KEY IDENTITY,
    NomeGenero VARCHAR(20) NOT NULL,
    DescricaoGenero VARCHAR(100) -- Adicionado campo de descrição do gênero
);

-- Tabela Especialidade
CREATE TABLE Especialidade (
    IDEspecialidade INT PRIMARY KEY IDENTITY,
    NomeEspecialidade VARCHAR(50) NOT NULL,
    DescricaoEspecialidade VARCHAR(200) -- Adicionado campo de descrição da especialidade
);

-- Tabela Perfis
CREATE TABLE Perfis (
    IDPerfil INT PRIMARY KEY IDENTITY,
    NomePerfil VARCHAR(50) NOT NULL,
    DescricaoPerfil VARCHAR(100) -- Adicionado campo de descrição do perfil
);

-- Tabela Usuarios
CREATE TABLE Usuarios (
    IDUsuario INT PRIMARY KEY IDENTITY,
    Nome VARCHAR(100) NOT NULL,
    Email VARCHAR(100) NOT NULL UNIQUE,
    Senha VARCHAR(100) NOT NULL,
    IdPerfil INT FOREIGN KEY REFERENCES Perfis(IDPerfil),
    DataRegistro DATETIME 
);

-- Tabela Médicos
CREATE TABLE Medicos (
    IdMedico INT PRIMARY KEY IDENTITY,
	IdClinica INT FOREIGN KEY REFERENCES Clinica(IDClinica) NOT NULL,
    IdEspecialidade INT FOREIGN KEY REFERENCES Especialidade(IDEspecialidade) NOT NULL,
    Nome VARCHAR(100) NOT NULL,
    CRM INT NOT NULL UNIQUE,
    Telefone VARCHAR(20), 
  
);

-- Tabela Pacientes
CREATE TABLE Pacientes (
    IdPaciente INT PRIMARY KEY IDENTITY,
    IdGenero INT FOREIGN KEY REFERENCES Genero(IDGenero),
    Nome VARCHAR(100) NOT NULL,
    DataNascimento DATE NOT NULL,
    Email VARCHAR(100),
    Endereco VARCHAR(200), 
    Cidade VARCHAR(50), 
    Estado VARCHAR(20), 
    CEP VARCHAR(10) 
);

-- Tabela Agendamentos
CREATE TABLE Agendamentos (
    IdAgendamento INT PRIMARY KEY IDENTITY,
    IdPaciente INT FOREIGN KEY REFERENCES Pacientes(IdPaciente) NOT NULL,
    IdMedico INT FOREIGN KEY REFERENCES Medicos(IdMedico) NOT NULL,
    StatusAgendamento VARCHAR(20) NOT NULL,
    DataHoraConsulta DATETIME NOT NULL,
    DataCriacao DATETIME 
);

-- Tabela Consultas
CREATE TABLE Consultas (
    IdConsulta INT PRIMARY KEY IDENTITY,
    IdMedico INT FOREIGN KEY REFERENCES Medicos(IdMedico) NOT NULL,
    IdPaciente INT FOREIGN KEY REFERENCES Pacientes(IdPaciente) NOT NULL,
    IdAgendamento INT FOREIGN KEY REFERENCES Agendamentos(IdAgendamento) NOT NULL,
    DescricaoConsulta TEXT,
    DataCriacao DATETIME 
);

-- Tabela Clínica
CREATE TABLE Clinica (
    IdClinica INT PRIMARY KEY IDENTITY,
    Endereco VARCHAR(200) NOT NULL,
    HorarioFuncionamento VARCHAR(100),
    CNPJ VARCHAR(20),
    NomeFantasia VARCHAR(100),
    RazaoSocial VARCHAR(100),
    TelefoneClinica VARCHAR(20), 
    EmailClinica VARCHAR(100) 
);

-- Tabela Comentários
CREATE TABLE Comentarios (
    IdComentario INT PRIMARY KEY IDENTITY,
    IdPaciente INT FOREIGN KEY REFERENCES Pacientes(IdPaciente),
    DataHoraComentario DATETIME NOT NULL,
    TextoComentario TEXT,
    Avaliacao INT,
    Respondido BIT, -- Adicionado campo para indicar se o comentário foi respondido
    DataResposta DATETIME -- Adicionado campo para data de resposta
);



