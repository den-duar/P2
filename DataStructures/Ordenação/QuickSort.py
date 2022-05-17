
def particao(vetor, inicio, final):
    pivot = vetor[final]
    i = inicio - 1
    for j in range(inicio,final):
        if vetor[j] <= pivot:
            i += 1
            vetor[i], vetor[j] = vetor[j], vetor[i]
    vetor[i + 1], vetor[final] = vetor[final], vetor[i + 1]
    return i + 1

def quickSort(vetor, inicio, final):
    if inicio < final:
        posicao = particao(vetor,inicio, final)
        #esquerda
        quickSort(vetor, inicio, posicao - 1)
        #direita
        quickSort(vetor, posicao + 1, final)
    return vetor

lista = [8,7,6,5,4,3,2,1]
print(quickSort(lista, 0, len(lista) - 1))
