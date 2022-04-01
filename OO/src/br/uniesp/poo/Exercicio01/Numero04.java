package br.uniesp.poo.Exercicio01;

import java.util.Scanner;

public class Numero04 {
    public static void main(String[] args) {
        float gastoTotal = 6;
        Scanner input = new Scanner(System.in);
        System.out.println("Quantos litros de gasolina?");
        float gasolina = input.nextFloat();
        gastoTotal += 2.5 * gasolina;
        System.out.println("Valor total da conta: R$" + gastoTotal);

    }
}
