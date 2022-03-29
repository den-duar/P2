class Aluno:
    def __init__(self, nome, nota1, nota2):
        self.nome = nome
        self.nota1 = nota1
        self.nota2 = nota2
    
    def calcula_media(self):
        return (self.nota1 + self.nota2)/2
    
    def mostra_dados(self):
        print(f"Nome: {self.nome}")
        print(f"Nota1: {self.nota1}")
        print(f"Nota2: {self.nota2}")
        
    def resultado(self):
        if self.calcula_media() >= 6:
            print("Aprovado")
        else:
            print("Reprovado")
            
            
reprovadinho = Aluno("Reprovei", 3, 2)
reprovadinho.mostra_dados()
reprovadinho.resultado()
aprovadinho = Aluno("Passei", 9, 10)
aprovadinho.mostra_dados()
aprovadinho.resultado()