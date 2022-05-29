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

    def localizar(self,placa):
        if pilha.__valores__.__contains__(placa):
            print("Encontrado")
            saida = ""
            controle = self.__topo__
            while(self.__valores__[controle] != placa):
                saida += str(self.__valores__[controle]) + " "
                controle -= 1
            print("Precisamos tirar os carros de placa:", saida)
        else:
            print("Não encontrado")


pilha = Pilha(3)
pilha.empilhar(1)
pilha.empilhar(2)
pilha.empilhar(3)
pilha.localizar(4)
pilha.localizar(1)