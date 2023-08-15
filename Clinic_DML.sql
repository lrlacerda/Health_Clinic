--DML

-- Inserindo Perfis
INSERT INTO Perfis (ID, NomePerfil)
VALUES
    ('Administrador'),
    ('M�dico'),
    ('Paciente');

-- Inserindo G�neros
INSERT INTO Genero (ID, NomeGenero)
VALUES
    ('Masculino'),
    ('Feminino'),
    ('N�o-Bin�rio');

-- Inserindo Especialidades
INSERT INTO Especialidade (ID, NomeEspecialidade)
VALUES
    ('Cardiologia'),
    ('Dermatologia'),
    ('Ortopedia'),
	('Oncologia'),
	('Neurologia');

-- Inserindo Dados de Usu�rios
INSERT INTO Usuarios (ID, Nome, Email, Senha, PerfilID)
VALUES
    ('Admin', 'admin@example.com', 'senha123', 1),
    ('Dr. Smith', 'smith@example.com', 'senha456', 2),
    ('Ana Silva', 'ana@example.com', 'senha789', 3);

-- Inserindo Dados de M�dicos
INSERT INTO Medicos (ID, Nome, EspecialidadeID)
VALUES
    (1, 'Dr. Johnson', 259873),
    (2, 'Dra. Martinez', 2647894),
	(1, 'Dr. Lucas', 9856314),
	(3, 'Dr. Maria', 1245369),
	(4, 'Dr. Ursula', 2569874);

-- Inserindo Dados de Pacientes
INSERT INTO Pacientes (ID, Nome, DataNascimento, GeneroID, Contato)
VALUES
    (1, 'Jo�o Santos', '1990-05-15', 'joao@example.com'),
    (2, 'Maria Oliveira', '1985-08-22', 'maria@example.com'),
	(2, 'Uiara Oliveira', '1989-03-20', 'uiara@example.com');

-- Inserindo Dados de Consultas
INSERT INTO Consultas (ID, DataHoraConsulta, MedicoID, PacienteID, DescricaoConsulta)
VALUES
    (1, 1, 1, 'Consulta de rotina'),
    (2, 2, 2, 'Dermatologia');

-- Inserindo Dados de Cl�nica
INSERT INTO Clinica (ID, Endereco, HorarioFuncionamento, CNPJ, NomeFantasia, RazaoSocial)
VALUES
    ('Rua Principal, 123', '09:00 - 18:00', '123456789', 'Cl�nica Sa�de', 'Cl�nica Sa�de Ltda');

-- Inserindo Dados de Agendamentos
INSERT INTO Agendamentos (ConsultaID, StatusAgendamento)
VALUES
    ('Agendada'),
    ('Agendada');

-- Inserindo Dados de Coment�rios
INSERT INTO Comentarios (ID, PacienteID, DataHoraComentario, TextoComentario, Avaliacao)
VALUES
    (1, '2023-08-16 14:00:00', '�timo atendimento!', 5),
    (2, '2023-08-21 10:30:00', 'M�dico muito experiente.', 4);
