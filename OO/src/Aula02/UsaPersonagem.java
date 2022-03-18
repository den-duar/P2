package Aula02;

public class UsaPersonagem {
    public static void main(String[] args) {

        Personagem goku = new Personagem();
        Personagem gohan = new Personagem();
        Personagem goten = new Personagem();

        goku.nome = "goku";
        goku.idade = 30;
        gohan.nome = "gohan";
        gohan.idade = 15;
        goten.nome = "goten";
        goten.idade = 8;

        goku.exibirNome();
        goku.exibirIdade();
        gohan.exibirNome();
        gohan.exibirIdade();
        goten.exibirNome();
        goten.exibirIdade();


    }
}
