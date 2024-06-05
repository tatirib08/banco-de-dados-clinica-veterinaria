-- SELECT * FROM tiposinfracoes WHERE valor > 300;

-- SELECT * FROM infracoes WHERE datahora NOT BETWEEN "2000-01-01" AND "2010-12-31";

-- SELECT * FROM agentes WHERE nome LIKE "%tati%"; 

-- SELECT * FROM agentes WHERE nome IN ("tati", "gabriel");

-- exercicio 6 -- 
-- INSERT INTO proprietarios (cpf, nome, endereco, idcidade, cep, sexo, datanascimento)
-- VALUES ("01180475501","Natasha", "Rua Silveira Martins 350", 1, "31850130", "f", "2002-08-26");

-- SELECT * FROM proprietarios;

-- SELECT * FROM modelos;

-- SELECT * FROM categorias; 

-- INSERT INTO veiculos (renavam, chassi, placa, idcor, idmodelo, anofabricacao, anomodelo, idcategoria, cpf)
-- VALUES (22,"211","JJK0109", 1, 6,2020,2020, 2, "00180465501");

-- SELECT * FROM veiculos; 

-- insert into cores (idcor, nome)
-- values (11, "Cobre");
-- SELECT * FROM cores;


-- exercicio 7
-- update combustiveis
-- set nome="Alcool"
-- where nome="Álcool";

-- SELECT * FROM combustiveis;

-- exercicio 8

-- SELECT nome FROM modelos 
-- WHERE idmarca=3;

-- exercicio 9
-- SELECT renavam, datahora, idtipoinfracao FROM infracoes
-- WHERE datahora >= "2009-04-01"; 

-- exercicio 10
-- SELECT renavam, datahora FROM infracoes
-- WHERE (datahora >= "2009-04-01" AND idtipoinfracao=5); 

-- exercicio 11
-- SELECT renavam, datahora FROM infracoes
-- WHERE (datahora BETWEEN "2009-03-01" AND "2009-03-31") AND (idtipoinfracao=5);

-- exercio 12
-- SELECT placa, idmodelo, idcor FROM veiculos
-- WHERE placa LIKE "JRO%";

-- exercicio 13
-- SELECT placa, idmodelo, idcor FROM veiculos
-- WHERE placa LIKE "__Z___9";

-- exercicio 14:
-- select idmarca, nome from modelos	
-- where idmarca in (1, 5, 12, 25, 33, 42)
-- order by idmarca, nome; 

-- exercicio 15: 
-- select datahora, count(*)
-- from infracoes
-- where datahora between "2009-01-01" and "2009-12-31"
-- group by datahora

-- update infracoes
-- set velocidade = 96
-- where idinfracao =31; 

-- exercicio 16: 16) Mostre qual a velocidade média e qual a máxima das infrações.
-- select avg(velocidade) as velMedia, max(velocidade) as velMax
-- from infracoes;

-- exercicio 17: 17) Liste a quantidade de veículos de cada modelo.
-- select idmodelo, count(*)
-- from veiculos
-- group by idmodelo

-- exercicio 18: 18) Mostre a quantidade de veículos por cor para a categoria 2.
-- select idcor, count(*) as qtdVeiculos
-- from veiculos
-- where idcategoria=2
-- group by idcor;

-- exercicio 19: 19) Mostre a quantidade de veículos por combustível para combustíveis cuja quantidade seja maior do que 10.
-- select idcombustivel, count(*) as qtdVeiculos
-- from veiculos_has_combustiveis
-- group by idcombustivel
-- having qtdVeiculos > 10;

-- exercicio 20: 20) Mostre a quantidade de infrações de cada tipo de infração ocorrida em 2009 somente para tipos de infrações que a quantidade seja maior do que 5.
select idtipoinfracao, count(*) as qtdInfracoes
from infracoes
where datahora between "2009-01-01" and "2009-12-31"
group by idtipoinfracao 
having qtdInfracoes > 5;

