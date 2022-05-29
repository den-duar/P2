import numpy as np

class ListaSequencial:
    
    def __init__(self, capacidade):
        self.capacidade = capacidade
        self.ultimaPosicao = -1
        self.valores = np.empty(self.capacidade, dtype = int)
    

    def imprime(self):
        if(self.ultimaPosicao == -1):
            print("A lista está vazia")
        else:
            for i in range(self.ultimaPosicao + 1):
                print(i, " - ", self.valores[i])

    def inserir(self, valor):
        if(self.ultimaPosicao == self.capacidade - 1):
            print("A lista está cheia")
        else:
            self.ultimaPosicao += 1
            self.valores[self.ultimaPosicao] = valor

    def pesquisar(self, valor):
        for i in range(self.ultimaPosicao + 1):
            if(self.valores[i] == valor):
                return i
        return -1
    
    def excluir(self, valor):
        posicao = self.pesquisar(valor)
        if(posicao == -1):
            return -1
        else:
            for i in range(posicao, self.ultimaPosicao):
                self.valores[i] = self.valores[i+1]
            self.ultimaPosicao -= 1

lista = ListaSequencial(2)
lista.inserir(4)
lista.inserir(26)
lista.imprime()
print(lista.pesquisar(8))
print(lista.pesquisar(26))
print(lista.excluir(2))
lista.excluir(4)
lista.imprime()

