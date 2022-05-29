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
    
    def invertida(self):
        retorno = []
        for x in range(self.__capacidade__):
            retorno.append(self.__valores__[x])
        print(retorno)


def constroiPilhaeInverte(lista):
    pilha = Pilha(len(lista))
    for x in lista:
        pilha.empilhar(x)
    pilha.invertida()

constroiPilhaeInverte([1,2,6,7,1,2,54,1])

