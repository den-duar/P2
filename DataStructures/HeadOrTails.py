from random import *

def joga_moeda():
    valor = random()
    if valor > 0.5:
        return "cara"
    else:
        return "coroa"

cara_coroa = joga_moeda()
print(cara_coroa)