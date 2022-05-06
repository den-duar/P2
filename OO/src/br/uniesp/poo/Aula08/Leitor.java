package br.uniesp.poo.Aula08;

import java.util.InputMismatchException;
import java.util.Scanner;

public class Leitor {

    Scanner input = new Scanner(System.in);

    public int lerIdade(){
        int idade = -1;
        System.out.println("Informe a idade");
        try {
            idade = input.nextInt();
        }catch (InputMismatchException ime){
            System.out.println("Informe idade em números");
        }catch (Exception e) {
            System.out.println("Erro inesperado ");
        }

        return idade;
    }
    public void exibeInfo(){
        try{
            exibirIdade();
        }catch (Exception e) {
            System.out.println(e.getMessage());
        }
    }

    public void exibirIdade() throws Exception{
        throw new Exception("Erro");
    }
}
