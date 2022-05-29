#Considerando como "mais alta prioridade" o inteiro de maior valor.
import numpy as np

class FilaDePrioridade:
    def __init__(self, capacidade):
        self.capacidade = capacidade
        self.numeroDeElementos = 0
        self.valores = np.empty(self.capacidade, dtype = int)

    def __filaVazia(self):
        return self.numeroDeElementos == 0
    
    def __filaCheia(self):
        return self.numeroDeElementos == self.capacidade

    def enfileirar(self, valor):
        if (self.__filaCheia()):
            print("Fila cheia!")
            return
        if (self.numeroDeElementos == 0):
            self.valores[self.numeroDeElementos] = valor
            self.numeroDeElementos += 1
        else:
            x = self.numeroDeElementos - 1
            while (x >= 0):
                if (valor < self.valores[x]):
                    self.valores[x+1] = self.valores[x]
                else:
                    break
                x -= 1
            self.valores[x+1] = valor
            self.numeroDeElementos += 1
    
    def desenfileirar(self):
        if self.__filaVazia():
            print("A fila já esta vazia")
            return
        valor = self.valores[self.numeroDeElementos - 1]
        self.numeroDeElementos -= 1
        return valor
    
    def verPrimeiro(self):
        if self.__filaVazia():
            return -1
        return self.valores[self.numeroDeElementos - 1]

filaPrioridade = FilaDePrioridade(5)
filaPrioridade.enfileirar(5)
filaPrioridade.enfileirar(4)
filaPrioridade.enfileirar(6)
filaPrioridade.enfileirar(8)
filaPrioridade.enfileirar(2)
print(filaPrioridade.verPrimeiro())
filaPrioridade.desenfileirar()
print(filaPrioridade.verPrimeiro())