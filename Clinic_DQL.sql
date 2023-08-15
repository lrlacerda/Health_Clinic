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

--Consulta para obter informações do paciente, consulta e médico:

SELECT 
    Pacientes.Nome AS NomePaciente,
    Medicos.Nome AS NomeMedico,
    Consultas.DescricaoConsulta,
    Consultas.DataCriacao AS DataConsulta
FROM Consultas
JOIN Pacientes ON Consultas.IdPaciente = Pacientes.IdPaciente
JOIN Medicos ON Consultas.IdMedico = Medicos.IdMedico;

--Consulta para obter informações de agendamento, paciente e médico:

SELECT 
    Agendamentos.DataHoraConsulta,
    Pacientes.Nome AS NomePaciente,
    Medicos.Nome AS NomeMedico
FROM Agendamentos
JOIN Pacientes ON Agendamentos.IdPaciente = Pacientes.IdPaciente
JOIN Medicos ON Agendamentos.IdMedico = Medicos.IdMedico;

--Consulta para listar médicos e suas especialidades:

SELECT 
    Medicos.Nome AS NomeMedico,
    Especialidade.NomeEspecialidade
FROM Medicos
JOIN Especialidade ON Medicos.IdEspecialidade = Especialidade.IDEspecialidade;

--Consulta para listar pacientes e seus comentários:

SELECT 
    Pacientes.Nome AS NomePaciente,
    Comentarios.TextoComentario,
    Comentarios.DataHoraComentario,
    Comentarios.Avaliacao
FROM Comentarios
JOIN Pacientes ON Comentarios.IdPaciente = Pacientes.IdPaciente;

--Consulta para obter informações de pacientes e suas consultas agendadas:

SELECT 
    Pacientes.Nome AS NomePaciente,
    Agendamentos.DataHoraConsulta,
    Medicos.Nome AS NomeMedico
FROM Agendamentos
JOIN Pacientes ON Agendamentos.IdPaciente = Pacientes.IdPaciente
JOIN Medicos ON Agendamentos.IdMedico = Medicos.IdMedico
WHERE Agendamentos.StatusAgendamento = 'Agendado';

--Consulta para listar clínicas e seus médicos:

SELECT 
    Clinica.NomeFantasia,
    Medicos.Nome AS NomeMedico,
    Especialidade.NomeEspecialidade
FROM Medicos
JOIN Clinica ON Medicos.IdClinica = Clinica.IdClinica
JOIN Especialidade ON Medicos.IdEspecialidade = Especialidade.IDEspecialidade;

--Consulta para obter detalhes de consultas, pacientes e médicos:

SELECT 
    Consultas.DescricaoConsulta,
    Pacientes.Nome AS NomePaciente,
    Medicos.Nome AS NomeMedico,
    Agendamentos.DataHoraConsulta
FROM Consultas
JOIN Pacientes ON Consultas.IdPaciente = Pacientes.IdPaciente
JOIN Medicos ON Consultas.IdMedico = Medicos.IdMedico
JOIN Agendamentos ON Consultas.IdAgendamento = Agendamentos.IdAgendamento;
