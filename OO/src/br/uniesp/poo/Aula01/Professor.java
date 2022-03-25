package br.uniesp.poo.Aula01;
public class Professor {
    String disciplina;
    String nome;

    public Professor(String Nome, String Disciplina){
        disciplina = Disciplina;
        nome = Nome;
    }

    public void ensinar(){
        System.out.println("Esse professor ensina a disciplina de" + disciplina);

    }

    public void nomear(){
        System.out.println("O nome do professor é " + nome);
    }


}
