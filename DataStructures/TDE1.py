nota = -1
while (nota < 0 or nota > 10):
    nota = float(input("Informe uma nota de 0 a 10: "))
    if(nota < 0 or nota > 10):
        nota = float(input("Nota invalida, informe nota entre 0 a 10: "))
    else:
        print("Nota cadastrada.")

    
