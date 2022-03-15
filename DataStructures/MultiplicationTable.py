numero = int(input("Digite o número desejado entre 1 e 10: "))
if numero >= 1 and numero <= 10:
    for multiplo in range(1,11):
        print (f"{numero} x {multiplo} = {numero*multiplo}" ) #String format, "f{value} parts of string {another value}"
else:
    print("Numero invalido.")