package br.uniesp.poo.Exercicio01;

import java.util.Scanner;

public class Numero06 {
    public static void main(String[] args) {
        int totalAlunosAprovados = 0;
        int totalAlunosReprovados = 0;
        int totalAlunosExame = 0;
        float notaUm;
        float notaDois;
        float mediaAluno;
        float mediaTurma = 0;

        Scanner input = new Scanner(System.in);

        for (int i = 0; i < 6; i++){
            System.out.println("Dados do aluno " + (i + 1));
            System.out.println("Informe a primeira nota: ");
            notaUm = input.nextFloat();
            System.out.println("Informe a nota 2: ");
            notaDois = input.nextFloat();
            mediaAluno = (notaUm + notaDois)/2;
            if(mediaAluno < 3){
                System.out.println("Aluno reprovado. Média: " + mediaAluno);
                totalAlunosReprovados ++;
            } else if (mediaAluno >= 3 && mediaAluno < 7) {
                System.out.println("Aluno em exame. Média: " + mediaAluno);
                totalAlunosExame ++;
            }else{
                System.out.println("Aluno aprovado. Média: " + mediaAluno);
                totalAlunosAprovados ++;
            }
            mediaTurma += mediaAluno;

        }
        System.out.println("Total de alunos reprovados " + totalAlunosReprovados);
        System.out.println("Total de alunos em exame " + totalAlunosExame);
        System.out.println("Total de alunos aprovados " + totalAlunosAprovados);
        System.out.println("Media da turma: " + (mediaTurma/6));
    }
}
