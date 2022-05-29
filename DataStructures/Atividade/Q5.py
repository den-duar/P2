#Feito considerando a pista como uma lista encadeada pois não sabemos quantos aviões teremos.

class Aviao:

    def __init__(self, nome, tipo):
        self.nome = nome
        self.tipo = tipo

    def caract(self):
        return (f"O nome do avião é: {self.nome}, e o tipo é: {self.tipo}")

class No:
    def __init__(self, valor):
        self.valor = valor
        self.proximo = None

    def mostrarNo(self):
        print(self.valor.caract())

class ListaEncadeada:
    def __init__(self):
        self.primeiro = None
        
    
    def insereInicio(self, valor):
        novo = valor
        novo.proximo = self.primeiro
        self.primeiro = novo

    def mostrar(self):
        if self.primeiro == None:
            print("A lista está vazia")
        
        atual = self.primeiro
        while atual != None:
            atual.mostrarNo()
            atual = atual.proximo
    
    def decolar(self):
        temp = self.primeiro
        anterior = self.primeiro
        if self.primeiro.proximo == None:
            return None
        while(temp.proximo != None):
            anterior = temp
            temp = temp.proximo 
        anterior.proximo = None
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
    
            
    def mostrarDecolar(self):
        if self.primeiro == None:
            print("A lista está vazia")
            return None
        else:
            temp = self.primeiro
            while(temp.proximo != None):
                temp = temp.proximo
            temp.mostrarNo()



pista = ListaEncadeada()
avi1 = No(Aviao("Airbus", "jato"))
avi2 = No(Aviao("Seneca", "bimotor"))
avi3 = No(Aviao("F14", "caça"))
avi4 = No(Aviao("Caravan","turbo-helice"))
pista.insereInicio(avi1)
pista.insereInicio(avi2)
pista.insereInicio(avi3)
pista.insereInicio(avi4)
pista.mostrarDecolar()
pista.decolar()
pista.mostrarDecolar()
print("Mostrar todos os restantes")
pista.mostrar()



