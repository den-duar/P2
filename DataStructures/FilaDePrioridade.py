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

fila = FilaDePrioridade(3)
fila.enfileirar(3)
fila.enfileirar(2)
fila.enfileirar(1)
fila.enfileirar(4)
print(fila.valores)
print(fila.desenfileirar())
fila.enfileirar(4)
print(fila.valores)
