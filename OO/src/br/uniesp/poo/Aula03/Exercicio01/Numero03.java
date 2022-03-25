package br.uniesp.poo.Aula03.Exercicio01;

import java.util.Scanner;

public class Numero03 {
    public static void main(String[] args) {
        Scanner input = new Scanner(System.in);
        boolean saida = true;
        while(saida) {
            System.out.println("Digite nome do funcionário: ");
            String nome = input.nextLine();
            float salario;
            if (nome.equals("fim")){
                saida = false;
            }else{
                System.out.println("Digite o salário de " + nome);
                salario = input.nextFloat();
                System.out.println("O novo salário é: " + (salario*1.2f));
            }
        }
    }
}

