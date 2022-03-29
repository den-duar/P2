class Produto:
    def __init__(self, nome, descricao, valor):
        self.nome = nome
        self.descricao = descricao
        self.valor = valor
        
    def calcular_valor_imposto(self):
        self.valor_imposto = float(self.valor) * 0.05
        return self.valor_imposto
    
    def mostra_dados(self):
        print(f"Nome: {self.nome}")
        print(f"Descrição: {self.descricao}")
        print(f"Valor: {self.valor}")
        print(f"Imposto: {self.valor_imposto}")
        print(f"Valor total a pagar: {float(self.valor_imposto)+float(self.valor)}")

   
p1 = Produto("Uva", "Isabel", "6. 00")
p1.calcular_valor_imposto()
p1.mostra_dados()
p2 = Produto("Maça", "Argentina", "8.00")
print(p2.nome, p2.descricao, p2.valor)
print(p2)
