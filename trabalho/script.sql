SELECT nome 
FROM estado
WHERE nome LIKE "P%";

SELECT idespecie, nome
FROM animal_paciente
ORDER BY idespecie;

SELECT nome, count(*)
FROM fornecedor
GROUP BY cidade_idcidade
HAVING count(*) > 3;

SELECT medicamento.nome, fornecedor.nome
FROM (medicamento JOIN fornecedor ON medicamento.fornecedor_idfornecedor = fornecedor.idfornecedor);

SELECT funcionario.nome, estado.nome
FROM (funcionario JOIN cidade ON funcionario.idcidade = cidade.idcidade)
JOIN estado ON cidade.estado_idestado = estado.idestado;