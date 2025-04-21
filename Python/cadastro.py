def style(caractere, quantidade):
    caractere = str(caractere)
    while not isinstance(quantidade, int):
        try:
            quantidade = int(input('Insira um número inteiro válido: '))
        except ValueError:
            print("Valor inválido. Tente novamente.")
    print(caractere * quantidade)


def coletar_dados_produtos(produtos, stop_words, continuar):
    from colorama import Fore
    while continuar not in stop_words:
        nome = input(Fore.LIGHTBLUE_EX + '📝 Nome do produto: ')
        descricao = input('🧾 Descrição do produto: ')
        preco_atacado = input('💰 Preço unitário no atacado (R$): ')
        tipo_embalagem = input('📦 Tipo de embalagem: ')

        try:
            preco_atacado = float(preco_atacado)
        except ValueError:
            print(Fore.RED + '❌ Erro: insira um valor numérico válido em "Preço unitário"\n')
            continue

        produtos[nome] = {
            'descricao': descricao,
            'preco': preco_atacado,
            'embalagem': tipo_embalagem
        }

        continuar = input('🔁 Deseja finalizar o cadastro de produtos? [s/n] ').strip().lower()


def exibir_produtos(produtos, calcular_icms):
    from colorama import Fore
    print(Fore.BLUE + "\n📦 --- Produtos cadastrados ---")
    for i, (nome, detalhes) in enumerate(produtos.items(), start=1):
        print(Fore.YELLOW + f"\n🔹 Produto {i}:")
        print(f"   📌 Nome: {nome}")
        print(f"   🧾 Descrição: {detalhes['descricao']}")
        print(f"   💵 Preço unitário (atacado): R$ {detalhes['preco']:.2f}")
        print(f"   📦 Embalagem: {detalhes['embalagem']}")
        print(f"   🧮 ICMS estimado (18%): R$ {calcular_icms(detalhes['preco']):.2f}")


def gerar_arquivo_json(produtos):
    import json
    from colorama import Fore
    if len(produtos) >= 1:
        nome_arquivo = "fornecedor_catalogo_produtos.json"
        try:
            with open(nome_arquivo, "w", encoding="utf-8") as f:
                json.dump(produtos, f, indent=4, ensure_ascii=False)
            print(Fore.GREEN + f"\n✅ Arquivo '{nome_arquivo}' gerado com sucesso! 🗂️")
        except Exception as e:
            print(Fore.RED + f"\n❌ Erro ao salvar os dados: {e}")
    else:
        print(Fore.RED + "\n⚠️ É necessário cadastrar ao menos um produto para gerar o arquivo JSON.")
