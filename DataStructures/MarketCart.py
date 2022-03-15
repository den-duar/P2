carrinho = []
produto = ''
while produto != "sair":
    produto = input("Adicine um produto na lista ou digite 'sair' para sair: ")
    if produto != "sair":
        carrinho.append(produto)
for produto in carrinho:
    print(produto)