def selectionSort(vetor):
    n = len(vetor)
    for i in range(n):
        idMinimo = i
        for j in range(i+1,n):
            if vetor[idMinimo] > vetor[j]:
                idMinimo = j
        temp = vetor[i]
        vetor[i] = vetor[idMinimo]
        vetor[idMinimo] = temp

lista = [10,8,15,20,3,1]
selectionSort(lista)
print(lista)
