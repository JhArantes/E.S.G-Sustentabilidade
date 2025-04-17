
-- DML (Data Manipulation Language)
-- Manipulação de Dados

-- ===============================================================================
-- 01 - Popular Dados 
-- ===============================================================================

-- Conhecendo Dados já inseridos
SELECT * FROM MC_CLIENTE; -- Está Sem Dados
SELECT * FROM MC_END_CLI; -- Está Sem Dados

-- Arvore Conexões
SELECT * FROM MC_LOGRADOURO; -- Com Dados

-- Das Tabelas Logradouro -> Bairro -> Cidade -> Estado  Todas estão com Dados

SELECT * FROM MC_ESTADO;  -- 3 Estados Inseridos


-- -------------------------------------------------------------------------------
-- Exericio 01 
-- Adicionando Clientes Fisicos e P. Juridica

-- Pessoa Fisica 
DECLARE
  v_id_cliente NUMBER;
BEGIN
  -- Table MC_Cliente
  INSERT INTO MC_CLIENTE
    (NR_CLIENTE, NM_CLIENTE, QT_ESTRELAS, VL_MEDIO_COMPRA, ST_CLIENTE, DS_EMAIL, NR_TELEFONE, NM_LOGIN, DS_SENHA)
  VALUES 
    (SEQ_CLIENTE_NR.NEXTVAL, 'Fernando Bispo', 6, 342.74, 'I', 'fernando59@bispo.com', '556499595959', 'FerBispo', '01022000')
  RETURNING NR_CLIENTE INTO v_id_cliente;

  --Table MC_CLI_FISICA
  INSERT INTO MC_CLI_FISICA 
    (NR_CLIENTE, DT_NASCIMENTO, FL_SEXO_BIOLOGICO, DS_GENERO, NR_CPF) 
  VALUES 
    (v_id_cliente, TO_DATE('01/02/2000','DD/MM/YYYY'), 'M', 'Bi-Sexual', '123.456.789-59');

  -- MC_END_CLI
  INSERT INTO MC_END_CLI
    (NR_CLIENTE, CD_LOGRADOURO_CLI, NR_END, DS_COMPLEMENTO_END, DT_INICIO, DT_TERMINO, ST_END)
  VALUES
    (v_id_cliente, 2, 59595959, 'Apto 45B', TO_DATE('02/04/2022', 'DD/MM/YYYY'), NULL, 'A');

END;
/


-- Pessoa Juridica
DECLARE
  v_id_cliente NUMBER;
BEGIN
  -- Table MC_Cliente
  INSERT INTO MC_CLIENTE
    (NR_CLIENTE, NM_CLIENTE, QT_ESTRELAS, VL_MEDIO_COMPRA, ST_CLIENTE, DS_EMAIL, NR_TELEFONE, NM_LOGIN, DS_SENHA)
  VALUES 
    (SEQ_CLIENTE_NR.NEXTVAL, 'Central Oxigênio', 8, 1200, 'A', 'central.oxigenio@outlook.com', '556499474747', 'CentroOx', '04082010')
  RETURNING NR_CLIENTE INTO v_id_cliente;

  --Table MC_CLI_JURIDICA
  INSERT INTO MC_CLI_JURIDICA 
    (NR_CLIENTE, DT_FUNDACAO, NR_CNPJ, NR_INSCR_EST) 
  VALUES 
    (v_id_cliente, TO_DATE('04/08/2010','DD/MM/YYYY'), '12.345.678/0001-90', '474747474747');

  -- MC_END_CLI
  INSERT INTO MC_END_CLI
    (NR_CLIENTE, CD_LOGRADOURO_CLI, NR_END, DS_COMPLEMENTO_END, DT_INICIO, DT_TERMINO, ST_END)
  VALUES
    (v_id_cliente, 4, 49494949, 'Em frente Hospital', TO_DATE('06/12/2020', 'DD/MM/YYYY'), NULL, 'A');

END;
/

-- Confirmando Conexão entre MC_CLIENTE -> MC_END_CLI -> MC_LOGRADOURO
SELECT
    c.NR_CLIENTE,
    c.NM_CLIENTE,
    e.CD_LOGRADOURO_CLI,
    e.NR_END,
    l.CD_LOGRADOURO,
    l.NM_LOGRADOURO
FROM MC_CLIENTE c
INNER JOIN MC_END_CLI e ON c.NR_CLIENTE = e.NR_CLIENTE
INNER JOIN MC_LOGRADOURO l ON e.CD_LOGRADOURO_CLI = l.CD_LOGRADOURO;


-- -------------------------------------------------------------------------------
-- Exercicio 02
-- Cadastro Cliente com Login já Criado

INSERT INTO MC_CLIENTE
    (NR_CLIENTE, NM_CLIENTE, QT_ESTRELAS, VL_MEDIO_COMPRA, ST_CLIENTE, DS_EMAIL, NR_TELEFONE, NM_LOGIN, DS_SENHA)
  VALUES 
    (SEQ_CLIENTE_NR.NEXTVAL, 'Fernando Henrique Bispo', 2, 122.4, 'A', 'FerHenrique@bispo.com', '556499666999', 'FerBispo', '02042002');


-- Output <> Saida
-- Error report - ORA-00001: unique constraint (RM564212.UK_MC_CLIENTE_MM_LOGIN) violated
-- Mais detalhes em -> https://docs.oracle.com/error-help/db/ora-00001/

-- Não foi possivel inserir o Valor de um login existente porque a Constraint Unique Value foi Violada
-- Error -> Constraint Valor UNICO Violado



-- ===============================================================================
-- 02 - Alterar Dados
-- ===============================================================================

-- Exercicio 03
-- Mudar de Cargo e almentar Salario em 12% de funcionario especifico 

UPDATE MC_FUNCIONARIO
SET DS_CARGO = 'Engenheiro de Dados',
    VL_SALARIO = VL_SALARIO * 1.12
WHERE NM_FUNCIONARIO = 'Gavin Edward Mitchell';

SELECT * FROM MC_FUNCIONARIO;
-- -------------------------------------------------------------------------------
-- Exercicio 04
-- Alterarar endereço cliente como Inativo e acrescentar data termino do no dia 22/04/2025 
UPDATE MC_END_CLI
SET ST_END = 'I',
    DT_TERMINO = TO_DATE('22/04/2025', 'DD/MM/YYYY')
WHERE NR_CLIENTE = 6
  AND ST_END = 'A';

SELECT * FROM MC_END_CLI;
-- -------------------------------------------------------------------------------
-- Exercicio 05
-- Tente eliminar um estado que tenha uma cidade cadastrada! Justificar Resultado

-- Descobrindo Estados com cidades cadastradas
SELECT 
    e.SG_ESTADO,
    e.NM_ESTADO,
    c.CD_CIDADE,
    c.NM_CIDADE
FROM MC_CIDADE C
INNER JOIN MC_ESTADO e ON c.SG_ESTADO = e.SG_ESTADO;

DELETE FROM MC_ESTADO
  WHERE SG_ESTADO = 'MG';

-- Output <> Saida
-- Error report - ORA-02292: integrity constraint (RM564212.FK_MC_CIDADE_ESTADO) violated - child record found
-- Mais detalhes em -> https://docs.oracle.com/error-help/db/ora-02292/

-- Não foi possivel excluir um estado pois teremos elementos orfãos da tabela Cidade deixando o Banco de Dados inconsistente 
-- Error -> Chave estrangeira FK Violada

-- -------------------------------------------------------------------------------
-- Exercicio 06
-- 