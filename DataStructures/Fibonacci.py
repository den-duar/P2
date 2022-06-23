quantidade = int(input("Quer a sequencia até quantos valores? "))
anterior1 = 0
anterior2 = 1
soma = 0
for i in range(quantidade):
    print (soma)
    soma = anterior1 + anterior2
    anterior2 = anterior1
    anterior1 = soma 
