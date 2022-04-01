package br.uniesp.poo.Exercicio01;

import java.util.Scanner;

public class Numero07 {
    public static void main(String[] args) {
        float INICIAL = 40;
        Scanner input = new Scanner(System.in);
        float precoTotal = 0;
        String nome = "";
        while(!nome.equals("sair")){
            System.out.println("Digite o nome do próximo cliente ou 'sair' para sair");
            nome = input.nextLine();
            if (nome.equals("sair")) {
                break;
            }
            int dias = 0;
            System.out.println("Digite a quantidade de dias: ");
            dias = Integer.parseInt(input.nextLine());
            if(dias < 10){
                precoTotal = INICIAL + (dias * 15);
            }else{
                precoTotal = INICIAL + (dias * 8);
            }
            System.out.println("A conta de " + nome + " teve o valor de: R$" + precoTotal);
        }

    }
}
