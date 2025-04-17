





































menu = 0
lista = [[],[]]

while True:

    menu = int(input('1 - inserir Produto\n2 - Sair'))

    if menu == 1:
        Nome_produto = input('Qual nome: ')
        Valor_produto = int('Qual valor')
        lista[0].append(Nome_produto)
        lista[1].append(Valor_produto)


    break

menu = 0
lista_nomes = []
lista_valores = []

while True:
    print('\n1 - Inserir Produto')
    print('2 - Exibir Produtos')
    print('3 - Sair')

    try:
        menu = int(input('Escolha uma opção: '))
    except ValueError:
        print('Opção inválida. Digite um número.')
        continue

    if menu == 1:
        nome_produto = input('Qual nome: ')
        try:
            valor_produto = float(input('Qual valor: '))
            lista_nomes.append(nome_produto)
            lista_valores.append(valor_produto)
            print(f'{nome_produto} adicionado com sucesso!')
        except ValueError:
            print('Valor inválido. Digite um número.')

    elif menu == 2:
        if not lista_nomes:
            print('Nenhum produto cadastrado.')
        else:
            print('\nProdutos Cadastrados:')
            for i in range(len(lista_nomes)):
                print(f'{lista_nomes[i]}: R$ {lista_valores[i]:.2f}')

    elif menu == 3:
        print('Saindo...')
        break

    else:
        print('Opção inválida.')