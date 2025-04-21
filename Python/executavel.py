# Importando bibliotecas
import json
from cadastro import *
from colorama import Fore, Style, init

init(autoreset=True)

# Função Lambda para calcular ICMS
calcular_icms = lambda preco: preco * 0.18

# Mensagem de boas-vindas estilizada
style('🛒', 30)
print(Fore.GREEN + Style.BRIGHT + " Seja bem-vindo ao portal de fornecedores da Melhores Compras! 🎉")
style('🛍️  ', 20)

# Coletando informações da empresa fornecedora
fornecedor_nome = input(Fore.CYAN + "🏢 Nome da sua empresa: ")
segmento_mercado = input(Fore.CYAN + "📦 Qual o segmento de mercado da sua empresa? ")
contato_gmail = input(Fore.CYAN + "✉️  Informe um e-mail (Gmail) para contato: ")

print(Fore.MAGENTA + f"\n🥳 É um prazer conhecer a {fornecedor_nome}!")

style('🔗', 60)
print(Fore.YELLOW + f'\n📋 {fornecedor_nome}, cadastre abaixo os produtos do segmento "{segmento_mercado}" que gostaria de oferecer para revenda na Melhores Compras.\n')

# Dicionário para armazenar os produtos
catalogo_produtos = {}
respostas_para_encerrar = ['sim', 's']

resposta = ''  # Inicializa a variável de controle

# Solicitação de cadastro de produtos
coletar_dados_produtos(catalogo_produtos, respostas_para_encerrar, resposta)

# Exibição dos produtos cadastrados
exibir_produtos(catalogo_produtos, calcular_icms)

# Geração de arquivo com os produtos
gerar_arquivo_json(catalogo_produtos)
