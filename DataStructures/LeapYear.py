ano = int(input("Informe o ano: "))
if (ano % 100 == 0) and (ano % 400 == 0):
    print(f"{ano} é ano bissexto.")
elif (ano % 4 == 0) and (ano % 100 != 0):
    print(f"{ano} é ano bissexto.")
else:
    print(f"{ano} não é ano bissexto.")