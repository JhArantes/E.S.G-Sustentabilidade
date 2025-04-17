--Inserindo registros na tabela mc_depto

INSERT INTO MC_DEPTO (NM_DEPTO, ST_DEPTO) VALUES('Comercial', 'A');
INSERT INTO MC_DEPTO (NM_DEPTO, ST_DEPTO) VALUES('Financeiro', 'A');
INSERT INTO MC_DEPTO (NM_DEPTO, ST_DEPTO) VALUES('SAC', 'A');

--Inserindo registros na tabela mc_funcionario

INSERT INTO MC_FUNCIONARIO (
    CD_DEPTO,
    CD_GERENTE,
    NM_FUNCIONARIO,
    DT_NASCIMENTO,
    FL_SEXO_BIOLOGICO,
    DS_GENERO,
    DS_CARGO,
    VL_SALARIO, 
    DS_EMAIL,
    ST_FUNC,
    DT_CADASTRAMENTO,
    DT_DESLIGAMENTO)
VALUES(1, null, 'Picolina Osorio Fortes', TO_DATE('10-04-1989', 'DD-MM-YYYY'), 'F', 'Mulher Cisgênero', 'Gerente de Vendas', 11983.00, 'pic.fortes@mc.com', 'A', TO_DATE('13-01-2013', 'DD-MM-YYYY'), null);


INSERT INTO MC_FUNCIONARIO (
    CD_DEPTO,
    CD_GERENTE,
    NM_FUNCIONARIO,
    DT_NASCIMENTO,
    FL_SEXO_BIOLOGICO,
    DS_GENERO,
    DS_CARGO,
    VL_SALARIO, 
    DS_EMAIL,
    ST_FUNC,
    DT_CADASTRAMENTO,
    DT_DESLIGAMENTO)
VALUES(1, 1, 'Rachel Karen Green', TO_DATE('05-05-1979', 'DD-MM-YYYY'), 'F', 'Mulher Cisgênero', 'Vendedor(a) V', 4867.55, 'rachel.green@mc.com', 'A', TO_DATE('14-08-2019', 'DD-MM-YYYY'), null);

INSERT INTO MC_FUNCIONARIO (
    CD_DEPTO,
    CD_GERENTE,
    NM_FUNCIONARIO,
    DT_NASCIMENTO,
    FL_SEXO_BIOLOGICO,
    DS_GENERO,
    DS_CARGO,
    VL_SALARIO, 
    DS_EMAIL,
    ST_FUNC,
    DT_CADASTRAMENTO,
    DT_DESLIGAMENTO)
VALUES(1, 1, 'Gavin Edward Mitchell', TO_DATE('08-08-1981', 'DD-MM-YYYY'), 'M', 'Homem Cisgênero', 'Vendedor(a) II', 3498.4, 'gavin.mitchell@mc.com', 'A', TO_DATE('04-09-2023', 'DD-MM-YYYY'), null);

INSERT INTO MC_FUNCIONARIO (
    CD_DEPTO,
    CD_GERENTE,
    NM_FUNCIONARIO,
    DT_NASCIMENTO,
    FL_SEXO_BIOLOGICO,
    DS_GENERO,
    DS_CARGO,
    VL_SALARIO, 
    DS_EMAIL,
    ST_FUNC,
    DT_CADASTRAMENTO,
    DT_DESLIGAMENTO)
VALUES(2, null, 'Chandler Muriel Bing', TO_DATE('10-04-1978', 'DD-MM-YYYY'), 'M', null, 'Gerente Financeiro', 27023.89, 'chandler.bing@mc.com', 'A', TO_DATE('13-01-2013', 'DD-MM-YYYY'), null);

INSERT INTO MC_FUNCIONARIO (
    CD_DEPTO,
    CD_GERENTE,
    NM_FUNCIONARIO,
    DT_NASCIMENTO,
    FL_SEXO_BIOLOGICO,
    DS_GENERO,
    DS_CARGO,
    VL_SALARIO, 
    DS_EMAIL,
    ST_FUNC,
    DT_CADASTRAMENTO,
    DT_DESLIGAMENTO)
VALUES(2, 4, 'Michael Gary Scott', TO_DATE('09-09-1963', 'DD-MM-YYYY'), 'M', null, 'Analista Financeiro Senior I', 12432.69, 'michael.scott@mc.com', 'A', TO_DATE('28-02-2019', 'DD-MM-YYYY'), null);

INSERT INTO MC_FUNCIONARIO (
    CD_DEPTO,
    CD_GERENTE,
    NM_FUNCIONARIO,
    DT_NASCIMENTO,
    FL_SEXO_BIOLOGICO,
    DS_GENERO,
    DS_CARGO,
    VL_SALARIO, 
    DS_EMAIL,
    ST_FUNC,
    DT_CADASTRAMENTO,
    DT_DESLIGAMENTO)
VALUES(2, 4, 'James Duncan Halpert', TO_DATE('16-03-1982', 'DD-MM-YYYY'), 'M', 'Homem Cisgênero', 'Especialista Financeiro', 13008.55, 'james.halpert@mc.com', 'A', TO_DATE('19-10-2019', 'DD-MM-YYYY'), null);

INSERT INTO MC_FUNCIONARIO (
    CD_DEPTO,
    CD_GERENTE,
    NM_FUNCIONARIO,
    DT_NASCIMENTO,
    FL_SEXO_BIOLOGICO,
    DS_GENERO,
    DS_CARGO,
    VL_SALARIO, 
    DS_EMAIL,
    ST_FUNC,
    DT_CADASTRAMENTO,
    DT_DESLIGAMENTO)
VALUES(3, null, 'Pamela Morgan Halpert', TO_DATE('11-12-1981', 'DD-MM-YYYY'), 'F', 'Mulher Cisgênero', 'Gerente de SAC', 27023.89, 'pamela.halpert@mc.com', 'A', TO_DATE('27-11-1019', 'DD-MM-YYYY'), null);

INSERT INTO MC_FUNCIONARIO (
    CD_DEPTO,
    CD_GERENTE,
    NM_FUNCIONARIO,
    DT_NASCIMENTO,
    FL_SEXO_BIOLOGICO,
    DS_GENERO,
    DS_CARGO,
    VL_SALARIO, 
    DS_EMAIL,
    ST_FUNC,
    DT_CADASTRAMENTO,
    DT_DESLIGAMENTO)
VALUES(2, 6, 'Phoebe Buffay-Hannigan', TO_DATE('16-02-1985', 'DD-MM-YYYY'), 'F', null, 'Atendente IV', 4098.77, 'phoebe.buffay@mc.com', 'A', TO_DATE('30-06-2023', 'DD-MM-YYYY'), null);

INSERT INTO MC_FUNCIONARIO (
    CD_DEPTO,
    CD_GERENTE,
    NM_FUNCIONARIO,
    DT_NASCIMENTO,
    FL_SEXO_BIOLOGICO,
    DS_GENERO,
    DS_CARGO,
    VL_SALARIO, 
    DS_EMAIL,
    ST_FUNC,
    DT_CADASTRAMENTO,
    DT_DESLIGAMENTO)
VALUES(2, 6, 'Joseph Francis Tribbiani', TO_DATE('09-01-1980', 'DD-MM-YYYY'), 'M', 'Homem Cisgênero', 'Atendente IV', 4098.77, 'joseph.tribbiani@mc.com', 'A', TO_DATE('30-06-2023', 'DD-MM-YYYY'), null);

--Inserindo registros na tabela mc_estado

INSERT INTO MC_ESTADO (SG_ESTADO, NM_ESTADO) VALUES ('SP', 'São Paulo');
INSERT INTO MC_ESTADO (SG_ESTADO, NM_ESTADO) VALUES ('PI', 'Piauí');
INSERT INTO MC_ESTADO (SG_ESTADO, NM_ESTADO) VALUES ('MG', 'Minas Gerais');

-- Inserindo registros na tabela mc_cidade

INSERT INTO MC_CIDADE (SG_ESTADO, NM_CIDADE, CD_IBGE, NR_DDD) VALUES ('SP', 'São Paulo', 3550308, 11);
INSERT INTO MC_CIDADE (SG_ESTADO, NM_CIDADE, CD_IBGE, NR_DDD) VALUES ('SP', 'São Bernardo do Campo', 3548708, 11);
INSERT INTO MC_CIDADE (SG_ESTADO, NM_CIDADE, CD_IBGE, NR_DDD) VALUES ('MG', 'Belo Horizonte', 3106200, 31);
INSERT INTO MC_CIDADE (SG_ESTADO, NM_CIDADE, CD_IBGE, NR_DDD) VALUES ('MG', 'Juiz de Fora', 3136702, 32);
INSERT INTO MC_CIDADE (SG_ESTADO, NM_CIDADE, CD_IBGE, NR_DDD) VALUES ('PI', 'Teresina', 2211001, 86);
INSERT INTO MC_CIDADE (SG_ESTADO, NM_CIDADE, CD_IBGE, NR_DDD) VALUES ('PI', 'Cajueiro da Praia', 2202083, 86);

-- Inserindo registros na tabela mc_bairro

INSERT INTO MC_BAIRRO (CD_CIDADE, NM_BAIRRO, NM_ZONA_BAIRRO) VALUES(1, 'Jardim Paulista', 'Oeste');
INSERT INTO MC_BAIRRO (CD_CIDADE, NM_BAIRRO, NM_ZONA_BAIRRO) VALUES(2, 'Jardim do Mar', 'Centro');
INSERT INTO MC_BAIRRO (CD_CIDADE, NM_BAIRRO, NM_ZONA_BAIRRO) VALUES(3, 'Santa Efigênia', null);
INSERT INTO MC_BAIRRO (CD_CIDADE, NM_BAIRRO, NM_ZONA_BAIRRO) VALUES(4, 'Cascatinha', null);

--Inserindo registros na tabela mc_logradouro

INSERT INTO MC_LOGRADOURO (CD_BAIRRO, NM_LOGRADOURO, NR_CEP) VALUES(1, 'Alameda Campinas', 01404000);
INSERT INTO MC_LOGRADOURO (CD_BAIRRO, NM_LOGRADOURO, NR_CEP) VALUES(1, 'Alameda Lorena', 01424007);
INSERT INTO MC_LOGRADOURO (CD_BAIRRO, NM_LOGRADOURO, NR_CEP) VALUES(2, 'Avenida Senador Vergueiro', 09750001);
INSERT INTO MC_LOGRADOURO (CD_BAIRRO, NM_LOGRADOURO, NR_CEP) VALUES(2, 'Avenida Índico', 09750601);
INSERT INTO MC_LOGRADOURO (CD_BAIRRO, NM_LOGRADOURO, NR_CEP) VALUES(3, 'Rua Amoras', 30260140);
INSERT INTO MC_LOGRADOURO (CD_BAIRRO, NM_LOGRADOURO, NR_CEP) VALUES(3, 'Avenida do Contorno', 30110014);
INSERT INTO MC_LOGRADOURO (CD_BAIRRO, NM_LOGRADOURO, NR_CEP) VALUES(4, 'Rua Francisco Vaz de Magalhães', 36033340);
INSERT INTO MC_LOGRADOURO (CD_BAIRRO, NM_LOGRADOURO, NR_CEP) VALUES(4, 'Rua Joaquim Carneiro Filho', 36033320);

--Inserindo registros na tabela mc_end_func
INSERT INTO MC_END_FUNC (
    CD_FUNCIONARIO,
    CD_LOGRADOURO,
    NR_END,
    DS_COMPLEMENTO_END,
    DT_INICIO,
    DT_TERMINO,
    ST_END) 
VALUES(1, 3, 2099, null, TO_DATE('19-12-2022', 'DD-MM-YYYY'), null, 'A');

INSERT INTO MC_END_FUNC (
    CD_FUNCIONARIO,
    CD_LOGRADOURO,
    NR_END,
    DS_COMPLEMENTO_END,
    DT_INICIO,
    DT_TERMINO,
    ST_END) 
VALUES(2, 1, 638, null, TO_DATE('14-08-2023', 'DD-MM-YYYY'), null, 'A');


--Inserindo registros na tabela mc_categoria_prod (categorias de produtos)

INSERT INTO MC_CATEGORIA_PROD(
    TP_CATEGORIA,
    DS_CATEGORIA,
    DT_INICIO,
    DT_TERMINO,
    ST_CATEGORIA
    )
VALUES('P', 'Eletrônicos', null, null, 'A');

INSERT INTO MC_CATEGORIA_PROD(
    TP_CATEGORIA,
    DS_CATEGORIA,
    DT_INICIO,
    DT_TERMINO,
    ST_CATEGORIA
    )
VALUES('P', 'Esporte e Lazer', null, null, 'A');

INSERT INTO MC_CATEGORIA_PROD(
    TP_CATEGORIA,
    DS_CATEGORIA,
    DT_INICIO,
    DT_TERMINO,
    ST_CATEGORIA
    )
VALUES('P', 'Pet Shop', null, null, 'A');

--Inserindo registros na tabela mc_produto

INSERT INTO MC_PRODUTO(
    CD_CATEGORIA,
    NR_CD_BARRAS_PROD,
    DS_PRODUTO,
    VL_UNITARIO,
    TP_EMBALAGEM,
    ST_PRODUTO,
    VL_PERC_LUCRO,
    DS_COMPLETA_PROD
    )
VALUES(1, '846293756910', 'Notebool Dell Inspiron 15', 5879.99, null, 'A', null, 'Notebool Dell Inspiron 15 Intel Core i5 516MB SSD');

INSERT INTO MC_PRODUTO(
    CD_CATEGORIA,
    NR_CD_BARRAS_PROD,
    DS_PRODUTO,
    VL_UNITARIO,
    TP_EMBALAGEM,
    ST_PRODUTO,
    VL_PERC_LUCRO,
    DS_COMPLETA_PROD
    )
VALUES(1, '071654853147', 'IPhone 13 256GB', 3879.99, null, 'A', null, 'Apple IPhone 13 256GB Meia-Noite 5G Tela 6,1 Câm. Traseira 12+12MP Frontal 12MP');

INSERT INTO MC_PRODUTO(
    CD_CATEGORIA,
    NR_CD_BARRAS_PROD,
    DS_PRODUTO,
    VL_UNITARIO,
    TP_EMBALAGEM,
    ST_PRODUTO,
    VL_PERC_LUCRO,
    DS_COMPLETA_PROD
    )
VALUES(2, '54762558236', 'Bicicleta Aro 29 KRW Spotlight', 809.10, null, 'A', null, 'Bicicleta Aro 29 KRW Spotlight Alumínio 21 Velocidades Freio a Disco SX37');

INSERT INTO MC_PRODUTO(
    CD_CATEGORIA,
    NR_CD_BARRAS_PROD,
    DS_PRODUTO,
    VL_UNITARIO,
    TP_EMBALAGEM,
    ST_PRODUTO,
    VL_PERC_LUCRO,
    DS_COMPLETA_PROD
    )
VALUES(2, '784449566321', 'Raquete de Tênis Babolat Pure Aero 98', 1504.95, null, 'A', null, 'Raquete de Tênis Babolat Pure Aero 98 16X20 305G - 2023 - Carlos Alcaraz (L3 (4 3/8))');

INSERT INTO MC_PRODUTO(
    CD_CATEGORIA,
    NR_CD_BARRAS_PROD,
    DS_PRODUTO,
    VL_UNITARIO,
    TP_EMBALAGEM,
    ST_PRODUTO,
    VL_PERC_LUCRO,
    DS_COMPLETA_PROD
    )
VALUES(3, '455563214885', 'Ração Seca Felina Royal Canin Gastrointestinal Fibre Response 1.5kg', 288.99, null, 'A', null, 'Ração Seca Royal Canin Veterinary Diet Gastrointestinal Fibre Response Gatos com Doenças Intestinais');

--Inserindo registros na tabela mc_categoria_prod (categorias de vídeos)

INSERT INTO MC_CATEGORIA_PROD(
    TP_CATEGORIA,
    DS_CATEGORIA,
    DT_INICIO,
    DT_TERMINO,
    ST_CATEGORIA
    )
VALUES('V', 'Instalação do Produto', null, null, 'A');

INSERT INTO MC_CATEGORIA_PROD(
    TP_CATEGORIA,
    DS_CATEGORIA,
    DT_INICIO,
    DT_TERMINO,
    ST_CATEGORIA
    )
VALUES('V', 'Uso no cotidiano', null, null, 'A');

--Inserindo registros na tabela mc_sgv_produto_video

INSERT INTO MC_SGV_PRODUTO_VIDEO(
    CD_PRODUTO,
    NR_SEQUENCIA,
    CD_CATEGORIA,
    VD_PRODUTO,
    TP_VIDEO_PROD,
    DS_PATH_VIDEO_PROD,
    ST_VIDEO_PROD
    )
VALUES(3, 1, 4, null, 'mpeg4', 'https://drive.google.com/drive/folders/1PUCWIQA7qOFJPPvv/montagem.mpeg4','A');

INSERT INTO MC_SGV_PRODUTO_VIDEO(
    CD_PRODUTO,
    NR_SEQUENCIA,
    CD_CATEGORIA,
    VD_PRODUTO,
    TP_VIDEO_PROD,
    DS_PATH_VIDEO_PROD,
    ST_VIDEO_PROD
    )
VALUES(3, 2, 5, null, 'mpeg4', 'https://drive.google.com/drive/folders/1PUCWIQA7qOFJPPvv/usomarchas.mpeg4','A');


-- Confirmando as insercoes
COMMIT;