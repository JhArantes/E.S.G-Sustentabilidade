import json # Importando o módulo do JSON 

# Esta função pega o valor de um produto e calcula o ICMS, que é um imposto (18% do valor).
calcular_icms = lambda valor: valor * 0.18

# Lista vazia para guardar os produtos cadastrados
produtos = []

# Esta função pergunta ao usuário as informações de um produto (nome, valor, tipo de embalagem).
def solicitar_informacoes_produto():
    try:
        # Pergunta o nome do produto.
        descricao = input("Digite a descrição do produto: ")

        # Pergunta o valor do produto até que o usuário digite um número válido.
        while True:
            try:
                valor = float(input("Digite o valor do produto: R$ "))
                break # Sai do loop se o valor for digitado corretamente.
            except ValueError:
                print("Valor inválido. Por favor, digite um número (ex: 49.90).")

        # Pergunta o tipo de embalagem do produto.
        embalagem = input("Digite o tipo de embalagem: ")

        # Calcula o ICMS usando a função criada.
        icms = calcular_icms(valor)

        # Guarda todas as informações do produto em um dicionário.
        produto = {
            "descricao": descricao,
            "valor": valor,
            "embalagem": embalagem,
            "icms": icms
        }

        return produto

    # Se acontecer algum erro inesperado durante o processo, ele mostra a mensagem de erro.
    except Exception as e:
        print(f"Ocorreu um erro inesperado: {e}")
        return None # Devolve nada se der erro.

# Este loop fica rodando até o usuário dizer que não quer cadastrar mais produtos.
while True:
    # Pergunta se o usuário quer cadastrar um produto e espera a resposta "sim" ou "não".
    while True:
        resposta = input("Deseja cadastrar um novo produto? (sim/não): ").strip().lower()
        if resposta in ["sim", "não", "nao", "s", "n"]:
            break # Sai do loop se a resposta for válida.
        print("Resposta inválida. Por favor, digite 'sim' ou 'não'.")

    # Se a resposta for "não", o programa para de cadastrar produtos.
    if resposta in ["não", "nao", "n"]:
        break

    # Chama a função para pegar as informações do produto.
    produto = solicitar_informacoes_produto()
    # Se o produto foi cadastrado corretamente.
    if produto:
        produtos.append(produto) # Adiciona o produto à lista de produtos.
        print("\nProduto cadastrado com sucesso!\n")
    else:
        print("O produto não foi cadastrado devido a um erro.")

# Depois que o usuário termina de cadastrar os produtos, esta parte mostra a lista de produtos cadastrados.
if produtos:
    print("\n--- Produtos Cadastrados ---")
    # Passa por cada produto na lista e mostra suas informações.
    for i, p in enumerate(produtos, start=1):
        print(f"\nProduto {i}:")
        print(f"\tDescrição: {p['descricao']}")
        print(f"\tValor: R$ {p['valor']:.2f}") # Mostra o valor com duas casas depois da vírgula.
        print(f"\tEmbalagem: {p['embalagem']}")
        print(f"\tICMS (18%): R$ {p['icms']:.2f}") # Mostra o valor do ICMS com duas casas depois da vírgula.
else:
    print("\nNenhum produto foi cadastrado.")

# Se tivermos cadastrado 5 ou mais produtos, o programa vai salvar essas informações em um arquivo chamado "1_5_arquivo_produto.json".
if len(produtos) >= 5:
    nome_arquivo = "1_5_arquivo_produto.json"
    try:
        # Abre o arquivo para escrever.
        with open(nome_arquivo, "w", encoding="utf-8") as f:
            # Usa a biblioteca "json" para transformar a lista de produtos em um formato especial e salvar no arquivo.
            # O "indent=4" deixa o arquivo mais fácil de ler, com espaços.
            # O "ensure_ascii=False" garante que caracteres especiais sejam mantidos.
            json.dump(produtos, f, indent=4, ensure_ascii=False)
        print(f"\nArquivo '{nome_arquivo}' criado com sucesso!")
    except Exception as e:
        print(f"\nErro ao criar o arquivo: {e}")
else:
    print("\nVocê precisa cadastrar no mínimo 5 produtos para gerar o arquivo JSON.")