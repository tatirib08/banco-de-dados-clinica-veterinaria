-- letra b) SELECT com LIKE 
-- SELECT nome 
-- FROM estado
-- WHERE nome LIKE "P%";

-- letra c) SELECT com order by
-- SELECT idespecie, nome
-- FROM animal_paciente
-- ORDER BY idespecie;

-- letra d) SELECT com GROUP BY E HAVING
-- SELECT fornecedor.cidade_idcidade as cidade, COUNT(*) as total
-- FROM fornecedor
-- GROUP BY fornecedor.cidade_idcidade
-- HAVING count(*) > 3;

-- letra e) SELECT com JOIN com duas tabelas
-- SELECT medicamento.nome, fornecedor.nome
-- FROM (medicamento JOIN fornecedor ON medicamento.fornecedor_idfornecedor = fornecedor.idfornecedor);


-- letra f) SELECT com JOIN com três tabelas 
-- SELECT funcionario.nome, estado.nome
-- FROM (funcionario JOIN cidade ON funcionario.cidade_idcidade = cidade.idcidade)
-- JOIN estado ON cidade.estado_idestado = estado.idestado;

-- -----------------------------------
-- letra g) SELECT com JOIN com quatro tabelas
-- selecione o nome dos pacientes, a descrição do atendimento e o nome do procedimento realizado:
 
--  select animal_paciente.nome as paciente, atendimento.descricao as descricao, procedimento.nome as procedimento
--  from ((( animal_paciente inner join atendimento 
--  on animal_paciente.idpaciente=atendimento.idpaciente)
--  inner join atendimento_has_procedimento 
--  on atendimento.idconsulta=atendimento_has_procedimento.atendimento_idconsulta) 
--  inner join procedimento 
--  on atendimento_has_procedimento.procedimento_idprocedimento=procedimento.idprocedimento);


 -- letra h) SELECT com JOIN com no mínimo 3 tabelas, group by e having 
 
select count(*), animal_paciente.nome as paciente, atendimento.descricao as descricao, 
procedimento.nome as procedimento
from ((( animal_paciente inner join atendimento 
on animal_paciente.idpaciente=atendimento.idpaciente)
inner join atendimento_has_procedimento 
on atendimento.idconsulta=atendimento_has_procedimento.atendimento_idconsulta) 
inner join procedimento 
on atendimento_has_procedimento.procedimento_idprocedimento=procedimento.idprocedimento)
group by procedimento.nome;

-- show global variables like 'sql_mode';
-- set global sql_mode = 'STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';
-- show global variables like 'sql_mode'; 