package Aula02;

import java.util.Scanner;

public class UsaPersonagemLeitura {
    public static void main(String[] args) {

        Scanner leitor = new Scanner(System.in);
        String nome;
        int idade;
        Personagem mandalorian = new Personagem();
        System.out.println("Informe o nome: ");
        nome = leitor.nextLine();
        System.out.println("Informe a idade: ");
        idade = leitor.nextInt();
        mandalorian.nome = nome;
        mandalorian.idade = idade;
        mandalorian.exibirNome();
        mandalorian.exibirIdade();

    }
}
