package br.uniesp.poo.Aula03;

public class Pessoa {

    public String apelido;
    String nome;
    private int idade;
    protected String sobrenome;

    public int getIdade() {
        return idade;
    }

    public void setIdade(int idade) {
        if (idade >= 0) {
            this.idade = idade;
        }
        else{
            System.out.println("Valor inválido");
        }
    }
}
