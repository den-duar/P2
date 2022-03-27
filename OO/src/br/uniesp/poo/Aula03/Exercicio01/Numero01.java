package br.uniesp.poo.Aula03.Exercicio01;

import java.util.Scanner;

public class Numero01 {
    public static void main(String[] args) {
        Scanner input = new Scanner(System.in);
        System.out.println("Quantos créditos o Star trooper tem?");
        float valor = input.nextFloat();
        System.out.println("Houve quanto % de aumento?");
        int aumento = input.nextInt();
        System.out.println("Agora o Star trooper tem: " + valor + (valor*aumento)/100 + " de creditos");

    }
}
