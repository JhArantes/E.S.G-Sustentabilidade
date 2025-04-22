-- DQL (Data Query Language)
-- Consultando os Dados - Como recuperar os dados inseridos

-- Exericio 01 
-- -------------------------------------------------------------------------------
/* Crie uma consulta SQL por meio do comando SELECT que exiba informações das categorias de produto e
respectivos produtos de cada categoria. Exiba as seguintes informações: código e nome da categoria, código
e descrição do produto, valor unitário, tipo de embalagem e percentual do lucro de cada produto. Caso
exista alguma categoria sem produto, você deve exibir a categoria e deixar os dados do produto em branco.
Classifique a consulta por ordem de nome de categoria e nome de produto, ambos de forma ascendente.
*/

SELECT
    c.CD_CATEGORIA AS CODIGO_CATEGORIA,
    c.DS_CATEGORIA AS NOME_CATEGORIA,
    p.CD_PRODUTO AS CODIGO_PRODUTO,
    p.DS_PRODUTO AS DESCRICAO_PRODUTO,
    p.VL_UNITARIO AS VALOR_UNITARIO,
    p.TP_EMBALAGEM AS TIPO_EMBALAGEM,
    p.VL_PERC_LUCRO AS PERCENTUAL_LUCRO
FROM 
    MC_CATEGORIA_PROD c
LEFT JOIN 
    MC_PRODUTO p ON c.CD_CATEGORIA = p.CD_CATEGORIA
ORDER BY 
    c.DS_CATEGORIA ASC, 
    p.DS_PRODUTO ASC;


-- Exericio 02
-- -------------------------------------------------------------------------------
/* Crie uma instrução SQL que exiba os dados dos clientes pessoas físicas. Exiba as seguintes informações:
código e nome do cliente, e-mail, telefone, login, data de nascimento no formato dia-mes-ano (com 4
digitos), dia da semana da data de nascimento, anos de vida, sexo biológico e CPF.
*/

SELECT 
    c.NR_CLIENTE AS CODIGO_CLIENTE,
    c.NM_CLIENTE AS NOME_CLIENTE,
    c.DS_EMAIL AS EMAIL,
    c.NR_TELEFONE AS TELEFONE,
    c.NM_LOGIN AS LOGIN,
    TO_CHAR(f.DT_NASCIMENTO, 'DD-MM-YYYY') AS DATA_NASCIMENTO,
    TO_CHAR(f.DT_NASCIMENTO, 'DAY') AS DIA_SEMANA,
    TRUNC(MONTHS_BETWEEN(SYSDATE, f.DT_NASCIMENTO)/12) AS IDADE,
    f.FL_SEXO_BIOLOGICO AS SEXO_BIOLOGICO,
    f.NR_CPF AS CPF
FROM 
    MC_CLIENTE c
JOIN 
    MC_CLI_FISICA f ON c.NR_CLIENTE = f.NR_CLIENTE
ORDER BY
    c.NM_CLIENTE;

-- Exericio 03
-- -------------------------------------------------------------------------------
/* Exiba as seguintes informações da tabela de visualização dos vídeos dos produtos: código do produto, nome
do produto, data e hora de visualização do produto. Exiba essas informações classificadas pela data e hora
mais recente. 
*/

SELECT 
    v.CD_PRODUTO AS CODIGO_PRODUTO,
    p.DS_PRODUTO AS NOME_PRODUTO,
    v.DT_VISUALIZACAO AS DATA_VISUALIZACAO,
    TO_CHAR(
        TO_DATE(
            LPAD(v.NR_HORA_VISUALIZACAO, 2, '0') || ':' || 
            LPAD(v.NR_MINUTO_VIDEO, 2, '0') || ':' || 
            LPAD(v.NR_SEGUNDO_VIDEO, 2, '0'), 
            'HH24:MI:SS'
        ), 
        'HH24:MI:SS'
    ) AS HORA_VISUALIZACAO
FROM 
    MC_SGV_VISUALIZACAO_VIDEO v
JOIN 
    MC_PRODUTO p ON v.CD_PRODUTO = p.CD_PRODUTO
ORDER BY 
    v.DT_VISUALIZACAO DESC,
    v.NR_HORA_VISUALIZACAO DESC,
    v.NR_MINUTO_VIDEO DESC,
    v.NR_SEGUNDO_VIDEO DESC;