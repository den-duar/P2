
class No:
    def __init__(self, valor):
        self.valor = valor
        self.proximo = None

    def mostrarNo(self):
        print(self.valor)

class ListaEncadeada:
    def __init__(self):
        self.primeiro = None
        
    
    def insereInicio(self, valor):
        novo = No(valor)
        novo.proximo = self.primeiro
        self.primeiro = novo

    def mostrar(self):
        if self.primeiro == None:
            print("A lista está vazia")
        
        atual = self.primeiro
        while atual != None:
            atual.mostrarNo()
            atual = atual.proximo
    
    def excluirInicio(self):
        temp  = self.primeiro
        if self.primeiro.proximo == None: ############################
            return None
        self.primeiro = self.primeiro.proximo
        return temp
    
    def pesquisar(self, valor):
        if self.primeiro == None:
            print("A lista está vazia")
            return None
        atual = self.primeiro
        while atual.valor != valor:
            if atual.proximo == None:
                return None
            else:
                atual = atual.proximo
        return valor
    
    def excluirPosicao(self, valor):
        if self.primeiro == None:
            print("A lista está vazia")
            return None
        atual = self.primeiro
        anterior = self.primeiro
        while atual.valor != valor:
            if atual.proximo == None:
                return None
            else:
                anterior = atual
                atual = atual.proximo
        if atual == self.primeiro:
            self.primeiro = self.primeiro.proximo
        else:
            anterior.proximo = atual.proximo
        return atual 
            
        