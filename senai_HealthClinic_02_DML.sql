--DML

-- Inserindo dados na tabela Genero
INSERT INTO Genero (NomeGenero) 
VALUES
    ('Masculino'),
    ('Feminino'),
    ('Outro');

-- Inserindo dados na tabela Especialidade
INSERT INTO Especialidade (NomeEspecialidade, DescricaoEspecialidade) 
VALUES
    ('Cardiologia', 'Especialidade que trata de doen�as do cora��o.'),
    ('Dermatologia', 'Especialidade que cuida da pele e suas doen�as.'),
    ('Ortopedia', 'Especialidade que trata de problemas musculoesquel�ticos.');

-- Inserindo dados na tabela Perfis
INSERT INTO Perfis (NomePerfil, DescricaoPerfil) 
VALUES
    ('Administrador', 'Perfil com acesso total ao sistema.'),
    ('M�dico', 'Perfil para os m�dicos da cl�nica.'),
    ('Paciente', 'Perfil para os pacientes.');

-- Inserindo dados na tabela Usuarios
INSERT INTO Usuarios (Nome, Email, Senha, IdPerfil, DataRegistro) VALUES
    ('Admin', 'admin@example.com', 'senha_admin', 1, GETDATE()),
    ('Dr. Smith', 'dr.smith@example.com', 'senha_medico', 2, GETDATE()),
    ('Maria Silva', 'maria@example.com', 'senha_paciente', 3, GETDATE());

-- Inserindo dados na tabela Medicos
INSERT INTO Medicos (IdClinica, IdEspecialidade, Nome, CRM, Telefone)
VALUES
    (1, 1, 'Dr. Johnson', 12345, '123-456-7890'),
    (1, 2, 'Dra. Martinez', 54321, '987-654-3210');

-- Inserindo dados na tabela Pacientes
INSERT INTO Pacientes (IdGenero, Nome, DataNascimento, Email, Endereco, Cidade, Estado, CEP)
VALUES
    (1, 'John Doe', '1990-05-15', 'john@example.com', '123 Main St', 'Anytown', 'CA', '12345'),
    (2, 'Jane Smith', '1985-10-20', 'jane@example.com', '456 Elm St', 'Another City', 'NY', '67890');

-- Inserindo dados na tabela Clinica
INSERT INTO Clinica (Endereco, HorarioFuncionamento, CNPJ, NomeFantasia, RazaoSocial, TelefoneClinica, EmailClinica)
VALUES
    ('789 Oak Ave', 'Seg-Sex 8:00-18:00', '12345678901', 'Cl�nica Sa�de Total', 'Sa�de Total Ltda.', '555-123-4567', 'contato@saude-total.com');

-- Inserindo dados na tabela Comentarios
INSERT INTO Comentarios (IdPaciente, DataHoraComentario, TextoComentario, Avaliacao, Respondido, DataResposta)
VALUES
    (1, GETDATE(), '�timo atendimento! O m�dico foi muito atencioso.', 5, 1, GETDATE()),
    (2, GETDATE(), 'Esperava um pouco menos de espera, mas a consulta foi boa.', 4, 0, NULL);

-- Inserindo dados na tabela Agendamentos
INSERT INTO Agendamentos (IdPaciente, IdMedico, StatusAgendamento, DataHoraConsulta, DataCriacao)
VALUES
    (1, 2, 'Agendado', CONVERT(DATETIME, '2023-08-20 10:00:00', 120), GETDATE()),
    (2, 3, 'Agendado', CONVERT(DATETIME, '2023-08-22 14:30:00', 120), GETDATE());


-- Inserindo dados na tabela Consultas
INSERT INTO Consultas (IdMedico, IdPaciente, IdAgendamento, DescricaoConsulta, DataCriacao)
VALUES
    (2, 1, 5, 'Paciente apresentou sintomas leves de gripe. Prescrito repouso e hidrata��o.', GETDATE()),
    (3, 2, 6, 'Consulta de rotina. Paciente est� saud�vel e n�o apresentou queixas.', GETDATE());
