package br.uniesp.poo.Exercicio01;

import java.nio.charset.StandardCharsets;
import java.util.Scanner;

public class Numero08 {
    public static void main(String[] args) {
        int nPacientes = 0;
        int totalIdadeHomens = 0;
        int nHomens = 0;
        int mulheresMedias = 0;
        int adultosJovens = 0;
        int idade = 0;
        float peso = 0;
        float altura = 0;
        String nomeIdoso = "";
        int idadeIdoso = 0;
        String nomeBaixinha = "";
        float alturaBaixinha = 20;
        String nome = "";
        String sexo;
        Scanner input = new Scanner(System.in);

        while(!nome.equals("fim")){
            System.out.println("Informe o nome do paciente:");
            nome = input.nextLine();
            if(nome.equals("fim")){
                break;
            }
            nPacientes ++;
            System.out.println("Informe o sexo do paciente(H/M):");
            sexo = input.nextLine();
            if(sexo.equals("H")){
                nHomens++;
                System.out.println("Informe o peso:");
                peso = Float.parseFloat(input.nextLine());
                System.out.println("Informe a idade:");
                idade = Integer.parseInt(input.nextLine());
                if(idade >= 18 && idade <=25){
                    adultosJovens++;
                }
                totalIdadeHomens += idade;
                System.out.println("Informe a altura: ");
                altura = Float.parseFloat(input.nextLine());
                if(idade > idadeIdoso){
                    nomeIdoso = nome;
                }
            }else if(sexo.equals("M")){
                System.out.println("Informe o peso:");
                peso = Float.parseFloat(input.nextLine());
                System.out.println("Informe a idade:");
                idade = Integer.parseInt(input.nextLine());
                if(idade >= 18 && idade <=25){
                    adultosJovens++;
                }
                System.out.println("Informe a altura: ");
                altura = Float.parseFloat(input.nextLine());
                if(altura >= 1.6 && altura <=  1.7 && peso > 70){
                    mulheresMedias++;
                }
                if(idade > idadeIdoso){
                    nomeIdoso = nome;
                }
                if(altura < alturaBaixinha){
                    alturaBaixinha = altura;
                    nomeBaixinha = nome;
                }
            }
        }
        System.out.println("Tivemos " + nPacientes + " pacientes");
        if(nHomens == 0){
            System.out.println("Não tivemos nenhum paciente homem.");
        }else if (nHomens != 0) {
            System.out.println("A media de idade dos homens foi: " + (totalIdadeHomens / nHomens));
        }
        System.out.println("Tivemos " + mulheresMedias + " mulheres entre 1,60 e 1,70 com mais de 70kg");
        System.out.println("Tivemos " + adultosJovens + " pessoas entre 18 e 25");
        System.out.println("O paciente mais velho é: " + nomeIdoso);
        System.out.println("O nome da mulher mais baixa é: " + nomeBaixinha);
    }
}
