Select * from Agendamentos
Select * from Clinica
Select * from Comentarios
Select * from Consultas
Select * from Especialidade
Select * from Genero
Select * from Medicos
Select * from Pacientes
Select * from Perfis
Select * from Usuarios

--Consulta para obter informa��es do paciente, consulta e m�dico:

SELECT 
    Pacientes.Nome AS NomePaciente,
    Medicos.Nome AS NomeMedico,
    Consultas.DescricaoConsulta,
    Consultas.DataCriacao AS DataConsulta
FROM Consultas
JOIN Pacientes ON Consultas.IdPaciente = Pacientes.IdPaciente
JOIN Medicos ON Consultas.IdMedico = Medicos.IdMedico;

--Consulta para obter informa��es de agendamento, paciente e m�dico:

SELECT 
    Agendamentos.DataHoraConsulta,
    Pacientes.Nome AS NomePaciente,
    Medicos.Nome AS NomeMedico
FROM Agendamentos
JOIN Pacientes ON Agendamentos.IdPaciente = Pacientes.IdPaciente
JOIN Medicos ON Agendamentos.IdMedico = Medicos.IdMedico;

--Consulta para listar m�dicos e suas especialidades:

SELECT 
    Medicos.Nome AS NomeMedico,
    Especialidade.NomeEspecialidade
FROM Medicos
JOIN Especialidade ON Medicos.IdEspecialidade = Especialidade.IDEspecialidade;

--Consulta para listar pacientes e seus coment�rios:

SELECT 
    Pacientes.Nome AS NomePaciente,
    Comentarios.TextoComentario,
    Comentarios.DataHoraComentario,
    Comentarios.Avaliacao
FROM Comentarios
JOIN Pacientes ON Comentarios.IdPaciente = Pacientes.IdPaciente;

--Consulta para obter informa��es de pacientes e suas consultas agendadas:

SELECT 
    Pacientes.Nome AS NomePaciente,
    Agendamentos.DataHoraConsulta,
    Medicos.Nome AS NomeMedico
FROM Agendamentos
JOIN Pacientes ON Agendamentos.IdPaciente = Pacientes.IdPaciente
JOIN Medicos ON Agendamentos.IdMedico = Medicos.IdMedico
WHERE Agendamentos.StatusAgendamento = 'Agendado';

--Consulta para listar cl�nicas e seus m�dicos:

SELECT 
    Clinica.NomeFantasia,
    Medicos.Nome AS NomeMedico,
    Especialidade.NomeEspecialidade
FROM Medicos
JOIN Clinica ON Medicos.IdClinica = Clinica.IdClinica
JOIN Especialidade ON Medicos.IdEspecialidade = Especialidade.IDEspecialidade;

--Consulta para obter detalhes de consultas, pacientes e m�dicos:

SELECT 
    Consultas.DescricaoConsulta,
    Pacientes.Nome AS NomePaciente,
    Medicos.Nome AS NomeMedico,
    Agendamentos.DataHoraConsulta
FROM Consultas
JOIN Pacientes ON Consultas.IdPaciente = Pacientes.IdPaciente
JOIN Medicos ON Consultas.IdMedico = Medicos.IdMedico
JOIN Agendamentos ON Consultas.IdAgendamento = Agendamentos.IdAgendamento;
