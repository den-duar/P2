package br.uniesp.poo.Aula03.Exercicio01;

import java.util.Scanner;

public class Numero02 {
    public static void main(String[] args) {
        for(int i=0; i < 10;i++){
            Scanner input = new Scanner(System.in);
            System.out.println("Qual o número? ");
            int numero = input.nextInt();
            if(numero % 2 == 0 || numero == 0){
                System.out.println("Número par");
            }else{
                System.out.println("Número impar");
            }
        }
    }
}
