import json

calcular_icms = lambda valor: valor * 0.18

produtos = []

def solicitar_informacoes_produto():
    try:
        descricao = input("Digite a descrição do produto: ")
        
        while True:
            try:
                valor = float(input("Digite o valor do produto: R$ "))
                break
            except ValueError:
                print("Valor inválido. Por favor, digite um número (ex: 49.90).")

        embalagem = input("Digite o tipo de embalagem: ")
        icms = calcular_icms(valor)

        produto = {
            "descricao": descricao,
            "valor": valor,
            "embalagem": embalagem,
            "icms": icms
        }

        return produto

    except Exception as e:
        print(f"Ocorreu um erro inesperado: {e}")
        return None

while True:
    while True:
        resposta = input("Deseja cadastrar um novo produto? (sim/não): ").strip().lower()
        if resposta in ["sim", "não", "nao"]:
            break
        print("Resposta inválida. Por favor, digite 'sim' ou 'não'.")

    if resposta in ["não", "nao"]:
        break

    produto = solicitar_informacoes_produto()
    if produto:
        produtos.append(produto)
        print("\nProduto cadastrado com sucesso!\n")
    else:
        print("O produto não foi cadastrado devido a um erro.")

if produtos:
    print("\n--- Produtos Cadastrados ---")
    for i, p in enumerate(produtos, start=1):
        print(f"\nProduto {i}:")
        print(f"\tDescrição: {p['descricao']}")
        print(f"\tValor: R$ {p['valor']:.2f}")
        print(f"\tEmbalagem: {p['embalagem']}")
        print(f"\tICMS (18%): R$ {p['icms']:.2f}")
else:
    print("\nNenhum produto foi cadastrado.")

if len(produtos) >= 5:
    nome_arquivo = "1_5_arquivo_produto.json"
    try:
        with open(nome_arquivo, "w", encoding="utf-8") as f:
            json.dump(produtos, f, indent=4, ensure_ascii=False)
        print(f"\nArquivo '{nome_arquivo}' criado com sucesso!")
    except Exception as e:
        print(f"\nErro ao criar o arquivo: {e}")
else:
    print("\nVocê precisa cadastrar no mínimo 5 produtos para gerar o arquivo JSON.")
