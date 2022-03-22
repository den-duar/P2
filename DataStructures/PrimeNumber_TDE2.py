max = int(input("Informe até qual número deseja: "))
primos = []
for numero in range(2, max + 1):
    multiplos = 0
    for i in range(1, numero+1):
        if numero % i == 0:
            multiplos += 1
    if multiplos <= 2:
        primos.append(numero)



print(f"Os numéros primos até {max} são {primos}")
