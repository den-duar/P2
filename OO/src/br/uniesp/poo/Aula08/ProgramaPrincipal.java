package br.uniesp.poo.Aula08;

public class ProgramaPrincipal {

    public static void main(String[] args) {

        Leitor leitor = new Leitor();
        Usuario dennis = new Usuario("Dennis", leitor.lerIdade());

    }
}
