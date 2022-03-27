armazenador = []
conta = 0
while conta < 5:
    nome = input("Diga o nome: ")
    altura = input(f"Diga a altura de {nome}: ")
    armazenador.append(altura)
    armazenador.append(nome)
    conta += 1
armazenador.reverse()
print(armazenador)