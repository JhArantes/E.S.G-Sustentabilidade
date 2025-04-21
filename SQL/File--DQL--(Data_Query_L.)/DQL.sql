
-- DQL (Data Query Language)
-- Consultando os Dados - Como recuperar os dados inseridos

SELECT * FROM MC_CLIENTE
-- ===============================================================================
-- Exericio 01 
-- -------------------------------------------------------------------------------
/* Crie uma consulta SQL por meio do comando SELECT que exiba informações das categorias de produto e
respectivos produtos de cada categoria. Exiba as seguintes informações: código e nome da categoria, código
e descrição do produto, valor unitário, tipo de embalagem e percentual do lucro de cada produto. Caso
exista alguma categoria sem produto, você deve exibir a categoria e deixar os dados do produto em branco.
Classifique a consulta por ordem de nome de categoria e nome de produto, ambos de forma ascendente.
*/

SELECT
    CD_CATEGORIA,
    NM_CATEGORIA,
    CD_PRODUTO,
    DS_PRODUTO,
    VL_UNITARIO,
    TP_EMBALAGEM,
    VL_PERC_LUCRO
FROM 
    MC_CATEGORIA c
LEFT JOIN 
    MC_PRODUTO p ON c.CD_CATEGORIA = p.CD_PRODUTO
ORDER BY NM_CATEGORIA ASC, 
    NM_PRODUTO ASC;

-- ===============================================================================
-- Exericio 02
-- -------------------------------------------------------------------------------
/* Crie uma instrução SQL que exiba os dados dos clientes pessoas físicas. Exiba as seguintes informações:
código e nome do cliente, e-mail, telefone, login, data de nascimento no formato dia-mes-ano (com 4
digitos), dia da semana da data de nascimento, anos de vida, sexo biológico e CPF.
*/
SELECT 
    c.NR_CLIENTE,
    c.NM_CLIENTE,
    c.DS_EMAIL,
    c.NR_TELEFONE,
    c.NM_LOGIN,
    TO_CHAR(f.DT_NASCIMENTO, 'DD-MM-YYYY') AS DATA_NASCIMENTO_FORMATADA,
    TO_CHAR(f.DT_NASCIMENTO, 'DAY') AS DIA_SEMANA,
    TRUNC(MONTHS_BETWEEN(SYSDATE, f.DT_NASCIMENTO) / 12) AS IDADE,
    f.FL_SEXO_BIOLOGICO,
    f.NR_CPF
FROM 
    MC_CLIENTE c
RIGHT JOIN 
    MC_CLI_FISICA f ON f.NR_CLIENTE = c.NR_CLIENTE;


-- ===============================================================================
-- Exericio 03
-- -------------------------------------------------------------------------------
/* Exiba as seguintes informações da tabela de visualização dos vídeos dos produtos: código do produto, nome
do produto, data e hora de visualização do produto. Exiba essas informações classificadas pela data e hora
mais recente. 
*/
--Meu codigo
SELECT 
    p.CD_PRODUTO,
    p.NM_PRODUTO,
    v.DT_VISUALIZACAO,
    v.NR_HORA_VISUALIZACAO
FROM MC_PRODUTO p
RIGHT JOIN MC_SGV_VISUALIZACAO_VIDEO v ON v.NR_CLIENTE = p.NR_CLIENTE
Order by DT_VISUALIZACAO, NR_HORA_VISUALIZACAO;


-- Chat gpt
SELECT 
    p.CD_PRODUTO,
    p.DS_PRODUTO AS NM_PRODUTO,
    v.DT_VISUALIZACAO,
    v.NR_HORA_VISUALIZACAO
FROM 
    MC_SGV_VISUALIZACAO_VIDEO v
JOIN 
    MC_SGV_PRODUTO_VIDEO p ON v.CD_PRODUTO = p.CD_PRODUTO 
    AND v.NR_SEQUENCIA = p.NR_SEQUENCIA
JOIN MC_PRODUTO p ON p.CD_PRODUTO = p.CD_PRODUTO
ORDER BY 
    v.DT_VISUALIZACAO DESC, 
    v.NR_HORA_VISUALIZACAO DESC;


SELECT 
    vv.CD_PRODUTO,
    p.DS_PRODUTO AS NOME_PRODUTO,
    vv.DT_VISUALIZACAO,
    TO_CHAR(TO_DATE(vv.NR_HORA_VISUALIZACAO || ':' || vv.NR_MINUTO_VIDEO || ':' || vv.NR_SEGUNDO_VIDEO, 'HH24:MI:SS'), 'HH24:MI:SS') AS HORA_VISUALIZACAO
FROM 
    MC_SGV_VISUALIZACAO_VIDEO vv
JOIN 
    MC_PRODUTO p ON vv.CD_PRODUTO = p.CD_PRODUTO
ORDER BY 
    vv.DT_VISUALIZACAO DESC,
    vv.NR_HORA_VISUALIZACAO DESC,
    vv.NR_MINUTO_VIDEO DESC,
    vv.NR_SEGUNDO_VIDEO DESC;


