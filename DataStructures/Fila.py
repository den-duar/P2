import numpy as np

class FilaCircular:
    
    def __init__(self, capacidade):
        self.capacidade = capacidade
        self.inicio = 0
        self.fim = -1
        self.numeroElementos = 0
        self.valores = np.empty(self.capacidade, dtype = int)
    
    def __fila_vazia__(self):
        return self.numeroElementos == 0
    
    def __fila_cheia__(self):
        return self.numeroElementos == self.capacidade

    def enfileirar(self, valor):
        if self.__fila_cheia__():
            print("A fila está cheia")
            return
        if self.fim == self.capacidade - 1:
            self.fim = -1
        self.fim += 1
        self.valores[self.fim] = valor
        self.numeroElementos += 1

    def desenfileirar(self):
        if self.__fila_vazia__():
            print("A fila já está vazia")
            return
        temp = self.valores[self.inicio]
        self.inicio += 1
        if self.inicio == self.capacidade - 1:
            self.inicio = 0
        self.numeroElementos -= 1
        return temp

    def primeiro(self):
        if self.__fila_vazia__():
            print("A fila está vazia")
            return -1
        return self.valores[self.inicio]

fila = FilaCircular(5)
print(fila.primeiro())

fila.desenfileirar()
fila.enfileirar(2)
print(fila.primeiro())
print(fila.valores)

fila.enfileirar(3)
fila.enfileirar(4)
fila.enfileirar(5)
fila.enfileirar(6)
print(fila.valores)
print(fila.desenfileirar())
fila.enfileirar(20)
print(fila.valores)
print(fila.desenfileirar())