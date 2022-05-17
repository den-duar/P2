def bubbleSort(vetor):
    n = len(vetor)
    for i in range(n):
        for j in range(0,n-i-1):
            if vetor[j] > vetor[j+1]:
                temp = vetor[j]
                vetor[j] = vetor[j+1]
                vetor[j+1]= temp
    
lista = [10,8,15,20,3,1]
bubbleSort(lista)
print(lista)