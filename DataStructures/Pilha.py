import numpy as np

class  Pilha:

    def __init__(self, capacidade):
        self.__capacidade__ = capacidade
        self.__topo__ = -1
        self.__valores__ = np.empty(self.__capacidade__, dtype = int)
    
    def __pilhaVazia__(self):
        if self.__topo__ == -1:
            return True
        else:
            return False
    
    def __pilhaCheia__(self):
        if self.__topo__ == (self.__capacidade__ - 1):
            return True
        else:
            return False

    def empilhar(self, valor):
        if self.__pilhaCheia__():
            print("Pilha cheia")
        else:
            print("Valor adicionado")
            self.__topo__ += 1
            self.__valores__[self.__topo__] = valor
    
    def desempilhar(self):
        if self.__pilhaVazia__():
            print("Pilha vazia")
        else:
            print(f"Valor {self.__valores__[self.__topo__]} removido")
            self.__topo__ -= 1
    
    def verTopo(self):
        if self.__topo__ != -1:
            return self.__valores__[self.__topo__]
        else:
            return -1




pilha = Pilha(5)
print(pilha.__pilhaVazia__())
print(pilha.__pilhaCheia__())
print(pilha.verTopo())
pilha.empilhar(4)
print(pilha.verTopo())
pilha.empilhar(6)
pilha.empilhar(9)
pilha.empilhar(3)
pilha.empilhar(1)
pilha.empilhar(15)
print(pilha.verTopo())
pilha.desempilhar()
print(pilha.verTopo())
pilha.desempilhar()
pilha.desempilhar()
pilha.desempilhar()
pilha.desempilhar()
pilha.desempilhar()