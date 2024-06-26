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
-- selecione o nome do procedimento e a soma do valor total recebido nos atendimentos agrupados por procedimento. 

-- select sum(atendimento.valor_total) as total, procedimento.nome as procedimento
-- from ((atendimento inner join atendimento_has_procedimento 
-- on atendimento.idconsulta=atendimento_has_procedimento.atendimento_idconsulta)
-- inner join procedimento 
-- on atendimento_has_procedimento.procedimento_idprocedimento=procedimento.idprocedimento)
-- group by procedimento.idprocedimento
-- having total >= 120;

-- letra i) SELECT com JOIN com no mínimo 3 tabelas, group by (diferente do item h) 
-- selecione o nome da cidade e a quantidade de espécies de pacientes agrupadas por cidade

-- select count(animal_paciente.idespecie) as totalEspecies, cidade.nome
-- from (( cidade inner join cliente_dono 
-- on cidade.idcidade=cliente_dono.cidade_idcidade)
-- inner join animal_paciente on cliente_dono.idcliente_dono=animal_paciente.idcliente_dono)
-- group by cidade.idcidade
-- having totalEspecies > 1;


-- letra j) SELECT com JOIN com no mínimo 2 tabelas, Where, group by e having (diferente do item h e i) 
-- selecione o nome do funcionario e a quantidade de atendimentos (agrupando por funcionario), 
-- para funcionarios cujo nome comece com aletra J, e a quantidade de atendimento seja maior que 1.
select count(atendimento.idconsulta) as quantidade, funcionario.nome
from ((funcionario inner join funcionario_has_atendimento
on funcionario.idfuncionario=funcionario_has_atendimento.funcionario_idfuncionario)
inner join atendimento on funcionario_has_atendimento.atendimento_idconsulta=atendimento.idconsulta )
where funcionario.nome like 'J%'
group by (funcionario.idfuncionario)
having quantidade > 1;
