package br.uniesp.poo.Aula03.Exercicio01;

import java.util.Scanner;

public class Numero05 {
    public static void main(String[] args) {

        Scanner input = new Scanner(System.in);
        float salarioBruto;
        float valorPrestacao;
        float valorMaximo;

        System.out.println("Informe o salario: ");
        salarioBruto = input.nextFloat();
        System.out.println("Informe o valor da prestação: ");
        valorPrestacao = input.nextFloat();
        valorMaximo = salarioBruto * 0.3f;
        if (valorPrestacao > valorMaximo){
            System.out.println("Empréstimo negado.");
        }else{
            System.out.println("Empréstimo aprovado.");
        }

    }
}
